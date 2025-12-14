.class Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;->setLayoutChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    if-ne p2, p6, :cond_0

    if-ne p4, p8, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;->j(Lcom/sec/android/app/sbrowser/settings/VideoAssistantFragment;)V

    return-void
.end method
