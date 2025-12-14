.class public final Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabModel$readAllTabs$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabStateReader$OnTabStateReadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabModel;->readAllTabs(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "com/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabModel$readAllTabs$1",
        "Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabStateReader$OnTabStateReadCallback;",
        "Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabState;",
        "state",
        "Ldb/r;",
        "onDetailsRead",
        "(Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabState;)V",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDetailsRead(Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabState;)V
    .locals 0

    const-string p0, "state"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/cross_app_action/tab/CrossAppActionTabModel;->access$getCrossAppActionTabList$p()Ljava/util/LinkedList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method
