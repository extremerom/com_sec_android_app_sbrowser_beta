.class public Lcom/sec/terrace/navigation_interception/TerraceNavigationHistory;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mNavigationHistory:Lorg/chromium/content_public/browser/NavigationHistory;

.field private mTerraceEntries:[Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/NavigationHistory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/navigation_interception/TerraceNavigationHistory;->mNavigationHistory:Lorg/chromium/content_public/browser/NavigationHistory;

    invoke-virtual {p1}, Lorg/chromium/content_public/browser/NavigationHistory;->getEntryCount()I

    move-result p1

    new-array p1, p1, [Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;

    iput-object p1, p0, Lcom/sec/terrace/navigation_interception/TerraceNavigationHistory;->mTerraceEntries:[Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;

    return-void
.end method


# virtual methods
.method public getEntryAtIndex(I)Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;
    .locals 3

    iget-object v0, p0, Lcom/sec/terrace/navigation_interception/TerraceNavigationHistory;->mNavigationHistory:Lorg/chromium/content_public/browser/NavigationHistory;

    invoke-virtual {v0}, Lorg/chromium/content_public/browser/NavigationHistory;->getEntryCount()I

    move-result v0

    if-gt v0, p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/navigation_interception/TerraceNavigationHistory;->mTerraceEntries:[Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;

    aget-object v1, v0, p1

    if-nez v1, :cond_1

    new-instance v1, Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;

    iget-object v2, p0, Lcom/sec/terrace/navigation_interception/TerraceNavigationHistory;->mNavigationHistory:Lorg/chromium/content_public/browser/NavigationHistory;

    invoke-virtual {v2, p1}, Lorg/chromium/content_public/browser/NavigationHistory;->getEntryAtIndex(I)Lorg/chromium/content_public/browser/NavigationEntry;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;-><init>(Lorg/chromium/content_public/browser/NavigationEntry;)V

    aput-object v1, v0, p1

    :cond_1
    iget-object p0, p0, Lcom/sec/terrace/navigation_interception/TerraceNavigationHistory;->mTerraceEntries:[Lcom/sec/terrace/navigation_interception/TerraceNavigationEntry;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getEntryCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/navigation_interception/TerraceNavigationHistory;->mNavigationHistory:Lorg/chromium/content_public/browser/NavigationHistory;

    invoke-virtual {p0}, Lorg/chromium/content_public/browser/NavigationHistory;->getEntryCount()I

    move-result p0

    return p0
.end method
