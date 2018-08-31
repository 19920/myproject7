var Navbar = React.createClass({


    render: function() {
      return (
       <div className="navigation bg-warning">
         <div className="container">

            <div className="navbar navbar-expand-lg navbar-light bg-light text-white fixed-top">
                    <a className="navbar-brand" href="/"><h4>BoulderBike Tour</h4></a>
                    <button className="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                        <span className="navbar-toggler-icon"></span>
                    </button>
                    <div className="collapse navbar-collapse" id="navbarNavAltMarkup">
                        <div className="navbar-nav">
                            <a className="nav-item nav-link" href="/riders/index"><h6>Riders</h6></a>
                            <a className="nav-item nav-link" href="/contests/new"><h6>Contests</h6></a>
                            <a className="nav-item nav-link" href="/welcome/location"><h6>Location</h6></a>
                            <a className="nav-item nav-link" href="/welcome/gallery"><h6>Gallery</h6></a>
                        </div>
                    </div>
            </div>

         </div>
       </div>

      );
    }
  });
