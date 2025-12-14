.class Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/TerraceHelper$TerraceHelperStartupCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockActivity$1;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 2

    const-string v0, "ContentBlock.Activity"

    const-string v1, "Failed to initialize Terrace."

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockActivity$1;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onSuccess()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockActivity$1;->this$0:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockActivity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockActivity;->f(Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockActivity;)V

    return-void
.end method
