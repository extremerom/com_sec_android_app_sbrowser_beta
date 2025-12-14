.class Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV1$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV1;->initializeCloseButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV1;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV1;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV1$3;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV1$3;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV1;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV1;->isTransBarEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV1$3;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV1;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV1;->b(Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV1;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV1$3;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV1;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV1;->a(Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV1;)Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV1$3;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV1;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV1;->a(Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV1;)Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    move-result-object p0

    const-string p1, "20063"

    const-string v0, "SourceTarget"

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->sendEventLogWithDimAndLangCode(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
