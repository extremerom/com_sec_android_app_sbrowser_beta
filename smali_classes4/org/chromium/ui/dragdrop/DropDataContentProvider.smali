.class public Lorg/chromium/ui/dragdrop/DropDataContentProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mDropDataProviderImpl:Lorg/chromium/ui/dragdrop/DropDataProviderImpl;


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/dragdrop/DropDataContentProvider;->mDropDataProviderImpl:Lorg/chromium/ui/dragdrop/DropDataProviderImpl;

    invoke-virtual {p0, p1, p2, p3}, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/dragdrop/DropDataContentProvider;->mDropDataProviderImpl:Lorg/chromium/ui/dragdrop/DropDataProviderImpl;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/dragdrop/DropDataContentProvider;->mDropDataProviderImpl:Lorg/chromium/ui/dragdrop/DropDataProviderImpl;

    invoke-virtual {p0, p1}, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public onCreate()Z
    .locals 1

    new-instance v0, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;

    invoke-direct {v0}, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/dragdrop/DropDataContentProvider;->mDropDataProviderImpl:Lorg/chromium/ui/dragdrop/DropDataProviderImpl;

    const/4 p0, 0x1

    return p0
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 1

    iget-object v0, p0, Lorg/chromium/ui/dragdrop/DropDataContentProvider;->mDropDataProviderImpl:Lorg/chromium/ui/dragdrop/DropDataProviderImpl;

    invoke-virtual {v0, p0, p1, p2}, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->openAssetFile(Landroid/content/ContentProvider;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 0

    iget-object p2, p0, Lorg/chromium/ui/dragdrop/DropDataContentProvider;->mDropDataProviderImpl:Lorg/chromium/ui/dragdrop/DropDataProviderImpl;

    invoke-virtual {p2, p0, p1}, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->openFile(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/dragdrop/DropDataContentProvider;->mDropDataProviderImpl:Lorg/chromium/ui/dragdrop/DropDataProviderImpl;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/ui/dragdrop/DropDataProviderImpl;->query(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public setDropDataProviderImpl(Lorg/chromium/ui/dragdrop/DropDataProviderImpl;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lorg/chromium/ui/dragdrop/DropDataContentProvider;->mDropDataProviderImpl:Lorg/chromium/ui/dragdrop/DropDataProviderImpl;

    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
