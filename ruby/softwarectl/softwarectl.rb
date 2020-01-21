#!/usr/bin/env ruby

argument0 = ARGV[0]
filename = ARGV[1]


def check(packages)
  comp = `whereis #{packages[0]} |grep bin |wc -l`.to_i
  if comp == 0
    puts "#{packages[0]} -> Uninstalled"
  else
    puts "#{packages[0]} -> Installed"
  end
end

def install(packages)
  comp = `whereis #{packages[0]} |grep bin |wc -l`.to_i
  process = "#{packages[1]}"

  if process == 'install'
    if comp == 0
      `zypper install #{packages[0]}`
      puts "#{packages[0]} instalado correctamente"
    else
      puts "#{packages[0]} ya está instalado"
    end

  elsif process == 'remove'
    if comp == 0
      puts "#{packages[0]} no está instalado"
    else
      `apt rm #{packages[0]}`
      puts "#{packages[0]} ha sido eliminado"
    end
  end
end

if argument0 == ()
  puts 'Usa el comando --help para ver las distintas opciones'
elsif argument0 == '--help'
  puts "Usage:
          systemctml [OPTIONS] [FILENAME]
  Options:
          --help, mostrar esta ayuda.
          --version, mostrar información sobre el autor del script
                     y fecha de creacion.
          --status FILENAME, comprueba si puede instalar/desintalar.
          --run FILENAME, instala/desinstala el software indicado.
  Description:

          Este script se encarga de instalar/desinstalar
          el software indicado en el fichero FILENAME.
          Ejemplo de FILENAME:
          tree:install
          nmap:install
          atomix:remove"
elsif argument0 == '--version'
  puts 'Script creado por Joel Cabrera Berriel, 08/01/2020'
elsif argument0 == '--status' and filename != ()
  lines = `cat #{filename}`
  f_lines = lines.split("\n")
  f_lines.each do |a|
    packages = a.split(":")
    check(packages)
  end
elsif argument0 == '--run' and filename != ()
  root = `id -u`.to_i

  if root == 0
    lines = `cat #{filename}`
    f_lines = lines.split("\n")
    f_lines.each do |a|
      packages = a.split(":")
      install(packages)
    end
  else
    puts "No se puede ejecutar porque usted no es un usuario root"
    exit 1
  end

end
