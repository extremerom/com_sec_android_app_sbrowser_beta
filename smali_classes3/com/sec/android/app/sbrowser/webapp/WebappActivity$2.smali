.class Lcom/sec/android/app/sbrowser/webapp/WebappActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/navigation_interception/TerraceInterceptNavigationDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->onCreateTerraceForNewContents(Lcom/sec/terrace/Terrace;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/webapp/WebappActivity;

.field final synthetic val$terrace:Lcom/sec/terrace/Terrace;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/webapp/WebappActivity;Lcom/sec/terrace/Terrace;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity$2;->this$0:Lcom/sec/android/app/sbrowser/webapp/WebappActivity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity$2;->val$terrace:Lcom/sec/terrace/Terrace;

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
    .locals 6

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity$2;->this$0:Lcom/sec/android/app/sbrowser/webapp/WebappActivity;

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->z(Lcom/sec/android/app/sbrowser/webapp/WebappActivity;)Z

    move-result p3

    const/4 p4, 0x0

    const-string v0, "si__WebappActivity"

    if-eqz p3, :cond_0

    const-string p0, "onCreateTerraceForNewContents::shouldIgnoreNavigation, mIsTerraceForLinkClosing = true"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p4

    :cond_0
    const-string p3, "onCreateTerraceForNewContents::shouldIgnoreNavigation"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity$2;->this$0:Lcom/sec/android/app/sbrowser/webapp/WebappActivity;

    invoke-static {p3, p2}, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->D(Lcom/sec/android/app/sbrowser/webapp/WebappActivity;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {p1}, Lcom/sec/terrace/navigation_interception/TerraceNavigationParams;->hasUserGesture()Z

    move-result v3

    invoke-virtual {p1}, Lcom/sec/terrace/navigation_interception/TerraceNavigationParams;->isRendererInitiated()Z

    move-result v4

    invoke-virtual {p1}, Lcom/sec/terrace/navigation_interception/TerraceNavigationParams;->getInitiatorOrigin()Lcom/sec/terrace/TerraceOrigin;

    move-result-object v5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity$2;->this$0:Lcom/sec/android/app/sbrowser/webapp/WebappActivity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity$2;->val$terrace:Lcom/sec/terrace/Terrace;

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->C(Lcom/sec/android/app/sbrowser/webapp/WebappActivity;Lcom/sec/terrace/Terrace;Ljava/lang/String;ZZLcom/sec/terrace/TerraceOrigin;)V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/webapp/WebappActivity$2;->this$0:Lcom/sec/android/app/sbrowser/webapp/WebappActivity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/webapp/WebappActivity;->B(Lcom/sec/android/app/sbrowser/webapp/WebappActivity;)V

    return p4
.end method
