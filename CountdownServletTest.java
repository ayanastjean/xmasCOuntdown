package com.countdown;

import org.junit.jupiter.api.Test;
import static org.mockito.Mockito.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

class CountdownServletTest {

    @Test
    void testServletForwarding() throws Exception {
        // Mock dependencies
        HttpServletRequest request = mock(HttpServletRequest.class);
        HttpServletResponse response = mock(HttpServletResponse.class);
        RequestDispatcher dispatcher = mock(RequestDispatcher.class);

        // Stub behavior
        when(request.getRequestDispatcher("countdown.jsp")).thenReturn(dispatcher);

        // Create servlet and call doGet()
        CountdownServlet servlet = new CountdownServlet();
        servlet.doGet(request, response);

        // Verify interactions
        verify(request).getRequestDispatcher("countdown.jsp");
        verify(dispatcher).forward(request, response);
    }
}
