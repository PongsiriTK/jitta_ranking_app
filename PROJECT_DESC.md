### Project Title: Jitta Ranking App with GraphQL

—

### Project Description:

You are tasked with developing a mobile app that allows users explore a **stocks ranking** from [Jitta](https://jitta.com). The stocks data will be fetched from a GraphQL provided to you. The app should display a list of stocks ranking with their details, allow users to filter for stocks market and sectors, and view additional information about each stocks.

### Project Requirements:

1. **Integration with GraphQL API:**
    1. Integrate the provided GraphQL API endpoint into the app.
    2. Fetch a list of stocks ranking from API and display them in a scrollable list view.
2. **Stock Details Screen:**
    1. Implement a screen to display detailed stock information.
    2. Display stock details such as stock name, detail, symbol, price, Jitta Score, Jitta Ranking, price chart, etc.
3. **Select markets and sectors Functionality:**
    1. Implement a Filter / Drop down UI that allows users to filter stocks by markets and sectors.
    2. Update display selected results in real-time
4. **Offline Support:**
    1. Implement offline support by caching GraphQL query results locally.
    2. Enable users to view previously fetched Stock ranking and stock detail even when offline.
5. **Error Handling:**
    1. Handle various error scenarios gracefully, including network errors, server errors, and client-side validation errors.
    2. Provide appropriate error messages to the user and offer solutions when possible.
6. **Performance Optimization:**
    1. Optimize app’s performance by minimizing unnecessary network request and optimizing GraphQL queries.
    2. Implement pagination for large dataset to improve loading times.
    3. Optimize stock chart with large dataset to improve performance rendering.
7. **Testing:**
    1. Write unit tests to ensure stability and reliability of the app.
    2. UI logic End to end test are optional (good to have)
8. **Documentation:**
    1. Provide clear instructions on how to run the app, including any dependencies or setup required.
    2. Document any relevant implementation details such as Flow chart, Application work-flow, Design architecture, High-level diagram.

### Deliverables:

- Public project source code with complete implementation on **Github** repository.
- Documentation detailing the project architecture, GraphQL integration and any additional notes in `Readme.md`