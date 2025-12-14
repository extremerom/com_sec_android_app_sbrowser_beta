.class public final synthetic Lcom/sec/android/app/sbrowser/toolbar/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;II)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/toolbar/x;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/x;->b:Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;

    iput p2, p0, Lcom/sec/android/app/sbrowser/toolbar/x;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar/x;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/x;->b:Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;

    iget p0, p0, Lcom/sec/android/app/sbrowser/toolbar/x;->c:I

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->c(Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;ILandroid/view/View;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/x;->b:Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;

    iget p0, p0, Lcom/sec/android/app/sbrowser/toolbar/x;->c:I

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->b(Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;ILandroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
