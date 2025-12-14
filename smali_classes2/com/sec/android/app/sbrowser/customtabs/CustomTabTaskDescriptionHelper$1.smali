.class Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper$1;
.super Lcom/sec/android/app/sbrowser/customtabs/CustomTabTabObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->startObserving()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper$1;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTabObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachedToInitialTab()V
    .locals 2

    const-string v0, "CustomTabTaskDescriptionHelper"

    const-string v1, "[onAttachedToInitialTab]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper$1;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->d(Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;)V

    return-void
.end method

.method public onDidFinishNavigation(ZZZ)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string p1, "CustomTabTaskDescriptionHelper"

    const-string p2, "[onDidFinishNavigation]"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper$1;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->b(Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper$1;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->e(Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;)V

    :cond_0
    return-void
.end method

.method public onObservingDifferentTab()V
    .locals 2

    const-string v0, "CustomTabTaskDescriptionHelper"

    const-string v1, "[onObservingDifferentTab]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper$1;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->d(Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;)V

    return-void
.end method

.method public onThemeColorChanged(I)V
    .locals 1

    const-string p1, "CustomTabTaskDescriptionHelper"

    const-string v0, "[onThemeColorChanged]"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper$1;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->e(Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;)V

    return-void
.end method

.method public onUpdateTitle(Ljava/lang/String;)V
    .locals 1

    const-string p1, "CustomTabTaskDescriptionHelper"

    const-string v0, "[onUpdateTitle]"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper$1;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->e(Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;)V

    return-void
.end method

.method public onUpdateUrl(Ljava/lang/String;)V
    .locals 1

    const-string p1, "CustomTabTaskDescriptionHelper"

    const-string v0, "[onUpdateUrl]"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper$1;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;->e(Lcom/sec/android/app/sbrowser/customtabs/CustomTabTaskDescriptionHelper;)V

    return-void
.end method
