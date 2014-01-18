/*jslint browser: true */
/*jslint plusplus: true */
/*global $*/
/*global LOG*/
/*global CCH*/
/*global OpenLayers*/
CCH.Objects.Map = function (args) {
    "use strict";
    var me = (this === window) ? {} : this;
    
    me.buildMap = function() {
        // Buffer the bounds of the layer by 10 degrees in each direction for the 
        // restricted extend
        var originalBounds = new OpenLayers.Bounds(CCH.CONFIG.item.bbox),
            extendedBounds = new OpenLayers.Bounds([
            originalBounds.left - Math.abs(originalBounds.left * 0.1),
            originalBounds.bottom - Math.abs(originalBounds.bottom * 0.1),
            originalBounds.right + Math.abs(originalBounds.right * 0.1),
            originalBounds.top + Math.abs(originalBounds.top * 0.1)
        ]),
            bounds,
            attributionControl,
            attributionSource = CCH.CONFIG.contextPath + '/images/openlayers/usgs.svg';
        
        originalBounds.extend(extendedBounds);
        bounds = originalBounds.transform(new OpenLayers.Projection('EPSG:4326'), new OpenLayers.Projection('EPSG:3857'));
        
        CCH.CONFIG.map = new OpenLayers.Map('map', {
            projection: CCH.CONFIG.projection,
            displayProjection: new OpenLayers.Projection(CCH.CONFIG.projection),
            restrictedExtent: bounds
        });

        CCH.CONFIG.map.addLayer(new OpenLayers.Layer.XYZ("Light Gray Base",
                "http://services.arcgisonline.com/ArcGIS/rest/services/Canvas/World_Light_Gray_Base/MapServer/tile/${z}/${y}/${x}",
                {
                    sphericalMercator: true,
                    isBaseLayer: true,
                    numZoomLevels: 17,
                    wrapDateLine: true
                }
        ));

        attributionControl = new OpenLayers.Control.Attribution({
            'template' : '<img id="openlayers-map-attribution-image" src="'+attributionSource+'" />'
        });

		var layer = new OpenLayers.Layer.WMS(CCH.CONFIG.item.id,
				CCH.CONFIG.item.getService('proxy_wms').endpoint,
				{
					layers: CCH.CONFIG.item.getService('proxy_wms').serviceParameter,
					version: '1.3.0',
					crs: 'EPSG:3857',
					sld: CCH.CONFIG.publicUrl + '/data/sld/' + CCH.CONFIG.item.id,
					styles: 'cch',
					transparent: true
				}, {
			singleTile: false,
			displayInLayerSwitcher: false,
			transparent: true,
			isBaseLayer: false,
			projection: 'EPSG:3857',
			type: 'cch-layer',
			tileOptions: {
				maxGetUrlLength: 2048
			}
		});
		
		CCH.CONFIG.map.addLayer(layer);
		CCH.CONFIG.map.zoomToExtent(new OpenLayers.Bounds(CCH.CONFIG.item.bbox).transform(new OpenLayers.Projection('EPSG:4326'), new OpenLayers.Projection('EPSG:3857')));
        CCH.CONFIG.map.addControl(attributionControl);
        
        $('a').click(function(event) {
            ga('send', 'event', {
                'eventCategory': 'link',   // Required.
                'eventAction': 'clicked',      // Required.
                'eventLabel': event.target.href
            });
        });
	};
    
    return me;
    
};