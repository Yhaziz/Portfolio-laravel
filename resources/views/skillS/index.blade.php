<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            {{ __('My Skills') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="flex justify-end m-2 p-2">
                <a href="{{ route('skills.create') }}"
                class="px-4 py-2 bg-cyan-400 hover:bg-indigo-700 rounded-lg text-black">New Skill</a>
                </div>
            <div class="relative overflow-x-auto shadow-md sm:rounded-lg">
            <table class="w-full text-sm text-left text-gray-500 dark:text-gray-400">
                <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
                    <tr>
                        <th scope="col" class="px-6 py-3">
                            Name project
                        </th>
                        <th scope="col" class="px-6 py-3">
                            Iamge
                        </th>
                        <th scope="col" class="px-6 py-3">

                        </th>
                    </tr>
                </thead>
                <tbody>
                    @forelse ($skills as $skill)
                    <tr class="bg-white border-b dark:bg-gray-900 dark:border-gray-700">
                        <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
                            {{ $skill->name }}
                        </th>
                        <td class="px-6 py-4">
                            <img src="{{ asset('storage/' . $skill->image) }}" class="w-12 h-12">
                        </td>
                        <td class="flex justify-end py-4 px-6">
                            <a href="{{ route('skills.edit', $skill->id) }}"
                                class="font-medium text-blue-600 dark:text-blue-500 hover:underline mr-3">Edit</a>

                                  <form method="POST" action="{{ route('skills.destroy', $skill->id) }}">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit"
                                            class="font-medium bg-yellow-500 dark:text-red-500 hover:underline mr-3"
                                            onclick="return confirm('Are you sure??')">Delete</button>
                                  </form>
                        </td>
                    </tr>
                    @empty
                    <tr>
                        <td>
                            <h2>No skiils</h2>
                        </td>
                    </tr>
                    @endforelse

                </tbody>
            </table>
        </div>
    </div>
</x-app-layout>
