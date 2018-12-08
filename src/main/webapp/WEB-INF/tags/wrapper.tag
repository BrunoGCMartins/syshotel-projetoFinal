<%@ tag description="Simple Wrapper Tag" pageEncoding="UTF-8"%>
<%@ attribute name="header" fragment="true" required="false" %>
<%@ attribute name="scripts" fragment="true" required="false" %>
<%@ attribute name="title"%>
<!DOCTYPE html>
<html lang="en">
    <head>
      <!-- Required meta tags -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <title>SysHotel</title>
      <!-- plugins:css -->
      <link rel="stylesheet" href="/vendors/iconfonts/mdi/css/materialdesignicons.min.css">
      <link rel="stylesheet" href="/vendors/css/vendor.bundle.base.css">
      <link rel="stylesheet" href="/vendors/css/vendor.bundle.addons.css">
      <!-- endinject -->
      <!-- plugin css for this page -->
      <!-- End plugin css for this page -->
      <!-- inject:css -->
      <link rel="stylesheet" href="/css/style.css">
      <!-- endinject -->
      <link rel="shortcut icon" href="/images/favicon.png" />
    </head>
    <jsp:invoke fragment="header"/>
    <body>
        <div class="container-scroller">
            <jsp:include page='../includes/navbar.jsp' />
            <!-- partial -->
            <div class="container-fluid page-body-wrapper">
                <jsp:include page='../includes/sidebar.jsp' />
                <!-- partial -->
                <div class="main-panel">
                    <div class="content-wrapper">
                        <jsp:doBody />
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page='/includes/footer.jsp' />

        <!-- plugins:js -->
        <script src="/vendors/js/vendor.bundle.base.js"></script>
        <script src="/vendors/js/vendor.bundle.addons.js"></script>
        <!-- endinject -->
        <!-- Plugin js for this page-->
        <!-- End plugin js for this page-->
        <!-- inject:js -->
        <script src="/js/off-canvas.js"></script>
        <script src="/js/misc.js"></script>
        <!-- endinject -->
        <!-- Custom js for this page-->
        <script src="/js/dashboard.js"></script>
        <!-- End custom js for this page-->
    </body>
</html>