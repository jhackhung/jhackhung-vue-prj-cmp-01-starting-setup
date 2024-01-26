## Course Project: The Learning Resources App

127. **Module Introduction**

Component in Action from A to Z

128. **Set up & First Step**

129. **First Components & Props**

Why we need to output list in components not in main vue?

It’s good to split our code to its logic component(into small reusable pieces), or if all the code logic are contained in main vue, it’s hard to maintain.

Feat: ./components/learning-resources/LearningResource.vue:

1. data connection from [App.vu](http://App.vu)e to LearningResource.vue
2. adding output HTML in LearningResource.vue.
3. mounting App.vue in main.js

130. **Styling and More Components**

Feat: ./components/learning-resources/StoredResources.vue:

1. transfer ul wrapped code from App.vue to StoredResources.vue to let App.vue clean.
2. Add main style to App.vue, and scoped style to LearningResources.vue and StoredResources.vue

131. **Header & Card Components**

`components/UI/BaseCard.vue`: It has no logic attached to it, just being a wrapper to other content which then have a certain look. ⇒ `slot`

Because Card Component will be used multiple times to other components, it’s better to set it to **global component**.

`justify-content` 主要以主軸線來排版

`align-items` 和 `justify-content` 相反，主要以交錯軸線來做排版，

Feat: ./components/layouts/TheHeading.vue & ./components/UI/BaseCard.vue:

1. Create BaseCard to wrap LearningResource, adding style
2. Create TheHeader to App.vue, adding style

132. **Adding the Base Button**

Feat: UI/BaseButton.vue:

1. Create BaseButton to wrap Delete button in LearningResources, also adding two kind of styling, one for default the other for class=”flat”

133. **Dynamic Components & Attribute Fallthrough**

When you add props or event listeners on custom components. then by default they **fall through to the root level element** in that custom component template.

Feat: TheResources.vue & AddResources.vue:

1. Create TheResources.vue for selecting the button which can switch AddResources.vue and StoredResources.vue
2. Remove StoredResource.vue from App.vue to StoredResources.vue

134. **Adding & Styling Tabs**

Feat: storedresources removed from App.vue to TheResources.vue:

1. Create Provide resources = this.storedresources in TheResources.vue
2. Create Inject resources in StoredResources.vue

Feat: Add classes selector to change styling of button in TheResources.vue

135. **Adding the Form**

Feat: Add form and style to AddResources.vue

Using the concept of props fallthrough.

136. **Fetching User Input**

Feat: User Input Logic:

1. fetch user input by $refs
2. store data in submitData function
3. add custom event listener by using provide and invoke
4. update data to storedResources list.

137. **Adding a Model Dialog**

`str.trim()` means remove the blank at the beginning and ending until find the character.

Feat: Create error input logic in AddResources.vue

Feat: Create UI/BasicDialog, with three slots, and style the HTML

Feat: Control the error dialog and closing the message

138. **Deleting Items**

Feat: Remove Element logic

1. Create removeResource(resID) in TheResources.vue,  find index of storeResources ID, and splice the data of ID
2. Provide this function
3. Inject this function in LearningResource.vue(child)
4. Add click listener to delete button, calling this function and return the ID of data

139. Adding “Teleport”

Feat: adding Teleport to body in BaseDialog
