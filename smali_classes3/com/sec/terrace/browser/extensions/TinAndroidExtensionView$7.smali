.class Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/navigation_interception/TerraceInterceptNavigationDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->createTerraceInterceptNavigationDelegate()Lcom/sec/terrace/navigation_interception/TerraceInterceptNavigationDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$7;->this$0:Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSubframeExternalProtocol(Ljava/lang/String;IZLcom/sec/terrace/TerraceOrigin;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onResourceRequestWithGesture()V
    .locals 0

    return-void
.end method

.method public shouldIgnoreNavigation(Lcom/sec/terrace/navigation_interception/TerraceNavigationParams;Ljava/lang/String;ZZ)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
