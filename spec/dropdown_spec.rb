describe 'Caixa de opções', :dropdown do
  it 'Seletor especifico' do
    visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
    select('Loki', from: 'dropdown')
    sleep 3 #temporizador
  end
  it 'Seletor especifico usando find' do
    visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
    drop = find('.avenger-list')
    drop.find('option', text: 'Scott Lang').select_option
    sleep 3 #temporizador
  end
  it 'Qualquer item', :sample do
    visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
    drop = find('.avenger-list')
    drop.all('option').sample.select_option
  end
end
