.class Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->initializeSourceButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2$2;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2$2;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->isTransBarEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2$2;->this$0:Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->c(Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;Z)V

    return-void
.end method
