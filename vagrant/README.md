Vagrant 
----

#### Step 1: Build Base Vagrant Box (if not already done)

vagrant/base/

	$ vagrant up
	$ vagrant package --output geoblacklight.box

#### Step 2: Start GeoBlacklight

vagrant/

	
	$ vagrant up

#### GeoBlacklight
```
http://127.0.0.1:9000/
```

#### Other Endpoints

- ```http://127.0.0.1:9000/geoserver```
 	- username: admin
    - password: geoserver
- ```http://127.0.0.1:9000/solr```
- ```http://127.0.0.1:9000/iiif```