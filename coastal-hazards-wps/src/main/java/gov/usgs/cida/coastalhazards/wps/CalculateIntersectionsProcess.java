package gov.usgs.cida.coastalhazards.wps;

import java.net.URL;
import org.geoserver.wps.gs.GeoServerProcess;
import org.geotools.data.simple.SimpleFeatureCollection;
import org.geotools.process.factory.DescribeParameter;
import org.geotools.process.factory.DescribeProcess;
import org.geotools.process.factory.DescribeResult;

/**
 *
 * @author Jordan Walker <jiwalker@usgs.gov>
 */
@DescribeProcess(
        title = "Calculate Intersections",
        description = "Create an intersection layer from the transects and shorelines",
        version = "1.0.0")
public class CalculateIntersectionsProcess implements GeoServerProcess {
    
    @DescribeResult(name = "intersections", description = "Layer containing intersections of shorelines and transects")
    public URL execute(
            @DescribeParameter(name = "shorelines", min = 1, max = 1) SimpleFeatureCollection shorelines,
            @DescribeParameter(name = "transects", min = 1, max = 1) SimpleFeatureCollection transects) {
        return null;
    }
    
    private class Process {
    
    }
}
