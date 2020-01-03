describe 'Caixas de seleção', :checkbox do
    before(:each) do
    visit 'https://training-wheels-protocol.herokuapp.com/checkboxes'
    end
    it 'Marcando uma opção' do
        check('thor')
    end
    it 'Desmarcando uma opção' do
        uncheck('antman')
    end
    after(:each) do
        sleep 3
    end
end