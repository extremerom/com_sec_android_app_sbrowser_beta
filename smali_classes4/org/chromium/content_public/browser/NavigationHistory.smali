.class public Lorg/chromium/content_public/browser/NavigationHistory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mCurrentEntryIndex:I

.field private final mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/chromium/content_public/browser/NavigationEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/content_public/browser/NavigationHistory;->mEntries:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addEntry(Lorg/chromium/content_public/browser/NavigationEntry;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content_public/browser/NavigationHistory;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getEntryAtIndex(I)Lorg/chromium/content_public/browser/NavigationEntry;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content_public/browser/NavigationHistory;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/content_public/browser/NavigationEntry;

    return-object p0
.end method

.method public getEntryCount()I
    .locals 0

    iget-object p0, p0, Lorg/chromium/content_public/browser/NavigationHistory;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public setCurrentEntryIndex(I)V
    .locals 0

    iput p1, p0, Lorg/chromium/content_public/browser/NavigationHistory;->mCurrentEntryIndex:I

    return-void
.end method
