.class public final synthetic Lcom/sec/android/app/sbrowser/main_view/menu/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$PromptScreenCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionMenuCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;Landroid/view/View;Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionMenuCallback;I)V
    .locals 0

    iput p4, p0, Lcom/sec/android/app/sbrowser/main_view/menu/g;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/g;->b:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/g;->c:Landroid/view/View;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/menu/g;->d:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionMenuCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Z)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/g;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/g;->d:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionMenuCallback;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/g;->b:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/g;->c:Landroid/view/View;

    invoke-static {v1, p0, v0, p1}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->p(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;Landroid/view/View;Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionMenuCallback;Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/g;->d:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionMenuCallback;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/g;->b:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/g;->c:Landroid/view/View;

    invoke-static {v1, p0, v0, p1}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->b(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;Landroid/view/View;Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionMenuCallback;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
