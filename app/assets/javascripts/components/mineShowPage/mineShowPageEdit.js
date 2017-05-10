angular
    .module('CavernUs')
    .controller('MineShowPageEditController', MineShowPageEditController);


MineShowPageEditController.$inject = ['$stateParams', '$state', 'minesService'];

function MineShowPageEditController($stateParams, $state, minesService) {
    var vm = this;

    vm.mine = {};

    vm.saveMine = saveMine;

    minesService.getMine($stateParams.id).then(function(resp) {
        vm.mine = resp.data;
    });

    function saveMine() {
        minesService.updateMine(vm.mine).then(function(resp) {
            if(resp.status == 200) {
                $state.go(mineShow, { id: resp.data.id })
            } else {
                alert('There was an error while editing this mine')
            }
        });
    }

}