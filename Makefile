interface:
	py-ts-interfaces -o js/src/interface.ts interfaces.py
	sed -i.bak "s/^interface/export interface/g" js/src/interface.ts

data:
	python fetch-and-render.py

site: interface data
	cd js; yarn; yarn build