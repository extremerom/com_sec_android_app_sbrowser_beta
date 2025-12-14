.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/model/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchContentCallback;
.implements Lcom/sec/android/app/sbrowser/common/function/Supplier;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/G;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/G;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/G;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/G;->b:Ljava/lang/Object;

    check-cast p0, LNc/x;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2$Companion;->a(Landroid/content/Context;LNc/x;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;

    move-result-object p0

    return-object p0
.end method

.method public onContentFetched(Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/G;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/G;->b:Ljava/lang/Object;

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$requestFetchOgImage$1;->f(Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
