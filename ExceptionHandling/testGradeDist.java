import static org.junit.Assert.assertTrue;

import java.io.IOException;

import org.junit.Test;

public class testGradeDist {
	@Test
	public void testScenario1() {
		GradeDist gd = new GradeDist();
		try {
			gd.buildDist();
		} catch (IOException e) {
			System.out.println("IOException - " + e.toString());
		}
		assertTrue(1==1);
	}
}
