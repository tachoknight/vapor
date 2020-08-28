extension Container {
    public var client: Client {
        self.application.client.delegating(to: self.eventLoop)
    }
}
