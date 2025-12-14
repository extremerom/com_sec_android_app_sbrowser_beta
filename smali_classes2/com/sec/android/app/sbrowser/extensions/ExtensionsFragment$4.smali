.class Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$PrefRefreshCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment$4;->this$0:Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIconDownloaded(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public refreshSixPreferences()V
    .locals 2

    const-string v0, "ExtensionsFragment"

    const-string v1, "refreshSixPreferences running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment$4;->this$0:Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->h(Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment$4;->this$0:Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;->j(Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragment;)V

    return-void
.end method
