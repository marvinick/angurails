class GeojsonBuilder
	def build_location(location, geojson)
		geojson << {
			type: "Feature",
      geometry: {
        type: "Point",
        coordinates: [location.longitude, location.latitude] # this part is tricky
      },
      properties: {
        address: location.address,
        :"marker-color" => "#FFFFFF",
        :"marker-symbol" => "circle",
        :"marker-size" => "medium",
      }
    }
  end
end
