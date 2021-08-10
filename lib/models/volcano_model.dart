class VolcanoModel {
  String name;
  String image;

  VolcanoModel(this.name, this.image);
}

List<VolcanoModel> volcanoes = volcanoesData
    .map((volcano) => VolcanoModel(volcano['name'] ?? 'Tidak ada data',
        volcano['image'] ?? 'Tidak ada data'))
    .toList();

var volcanoesData = [
  {
    "name": "Gunung Merapi",
    "image": "https://magma.vsi.esdm.go.id/img/ga/MER/MER_20210810060806.png"
  },
  {
    "name": "Gunung Sinabung",
    "image": "https://magma.vsi.esdm.go.id/img/ga/SIN/SIN202108100000.png"
  },
  {
    "name": "Gunung Ili Lewotolok",
    "image": "https://magma.vsi.esdm.go.id/img/ga/LEW/LEW202108100000.png"
  },
];
