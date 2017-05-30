<?php

namespace GeoFixer\tests;
use GeoFixer\traits\TranslitTrait;

/**
 * Class TranslitTraitTest
 *
 * @group common
 * @package GeoFixer\tests
 */
class TranslitTraitTest extends \PHPUnit_Framework_TestCase
{
    use TranslitTrait;

    public function testRemoveSymbols()
    {
        $word = 'xxxТе1кст%mk456';

        $result = $this->removeSymbols($word);

        $this->assertEquals('Текст', $result);
    }

    public function testRemoveSpecifications()
    {
        $words = [
            'край Прекрасный' => 'Прекрасный', 'автономная область Воркута' => 'Воркута', 'автономный округ Мирный' => 'Мирный', 'ао Давно' => 'Давно',
            'республика Камыш' => 'Камыш', 'Респ. Публика' => 'Публика', 'дер. Мармеладок' => 'Мармеладок', 'деревня Докучаево' => 'Докучаево', 'д. Домашний' => 'Домашний',
            'г. Городище' => 'Городище'
        ];

        foreach ($words as $word => $result) {
            $this->assertEquals($result, $this->removeSpecifications($word));
        }
    }

    public function testWordTranslit()
    {
        $words = [
            'край Прекрасный' => 'prekrasnyiy', 'автономная область Воркута' => 'vorkuta', 'автономный округ Мирный' => 'mirnyiy', 'ао Давно' => 'davno',
            'республика Камыш' => 'kamyish', 'Респ. Публика' => 'publika', 'дер. Мармеладок' => 'marmeladok', 'деревня Докучаево' => 'dokuchaevo', 'д. Домашний' => 'domashniy',
            'г. Городище' => 'gorodische'
        ];

        foreach ($words as $word => $result) {
            $this->assertEquals($result, $this->wordTranslit($word));
        }

    }
}
