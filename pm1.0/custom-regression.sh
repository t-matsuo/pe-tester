#!/bin/bash

 # Copyright (C) 2013 Takatoshi Matsuo <matsuo.tak@gmail.com>
 #
 # This program is free software; you can redistribute it and/or
 # modify it under the terms of the GNU General Public
 # License as published by the Free Software Foundation; either
 # version 2 of the License, or (at your option) any later version.
 #
 # This software is distributed in the hope that it will be useful,
 # but WITHOUT ANY WARRANTY; without even the implied warranty of
 # MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 # General Public License for more details.
 #
 # You should have received a copy of the GNU General Public
 # License along with this library; if not, write to the Free Software
 # Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
 #

# This file is used with regression.core.sh provided by pacemaker.
# If you want to create test-case, please run as below
#  # create_mode=true ./custom-regression.sh -i your-xml-directory

core=`dirname $0`
. $core/regression.core-1.0.sh

for i in `ls $io_dir/*.xml`; do
    testbase=`basename $i | sed -e "s/\.xml$//g"`
    do_test "$testbase" "$testbase"
done

info Done.
echo ""

test_results
