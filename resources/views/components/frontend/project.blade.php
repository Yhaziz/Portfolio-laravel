@props(['project'])
<a x-data="{ skill: {{ json_encode($project->skill) }} }"
    href="{{$project->project_url}}" target="_blank"
    :class="selectedTab == 'all' || selectedTab == skill.id ? 'block' : 'hidden'"
     class="group w-full max-w-sm overflow-hidden bg-white rounded-lg shadow-lg dark:bg-gray-800">
    <img class="object-cover object-center w-full h-56 ease-in duration-100 group-hover:scale-105"
    src="{{asset('storage/' . $project->image)}}" alt="avatar">

    <div class="flex items-center px-6 py-3 bg-gray-900">

        <h1 class="mx-3 text-lg font-semibold text-white group-hover:text-light-tail-500 dark:group-hover:text-dark-navy-100">{{$project->skill->name}}</h1>
    </div>

    <div class="px-6 py-4">
        <h1 class="text-xl font-semibold text-gray-800 dark:text-white group-hover:text-light-tail-500 dark:group-hover:text-dark-navy-100">{{$project->name}}</h1>



        <div class="flex items-center mt-4 text-gray-700 dark:text-gray-200 group-hover:text-black dark:group-hover:text-white">
            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                <path stroke-linecap="round" stroke-linejoin="round" d="M15.042 21.672L13.684 16.6m0 0l-2.51 2.225.569-9.47 5.227 7.917-3.286-.672zm-7.518-.267A8.25 8.25 0 1120.25 10.5M8.288 14.212A5.25 5.25 0 1117.25 10.5" />
              </svg>


            <h1 class="px-2 text-sm group-hover:text-black dark:group-hover:text-white">{{$project->project_url}} </h1>
        </div>
    </div>
</a>
