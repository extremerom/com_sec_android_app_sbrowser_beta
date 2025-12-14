.class public final synthetic Lcom/sec/android/app/sbrowser/toolbar/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;II)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/toolbar/y;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/y;->b:Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;

    iput p2, p0, Lcom/sec/android/app/sbrowser/toolbar/y;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/toolbar/y;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/y;->b:Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;

    iget p0, p0, Lcom/sec/android/app/sbrowser/toolbar/y;->c:I

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->a(Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;ILandroid/view/View;)Z

    move-result p0

    return p0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/y;->b:Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;

    iget p0, p0, Lcom/sec/android/app/sbrowser/toolbar/y;->c:I

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;->d(Lcom/sec/android/app/sbrowser/toolbar/ToolbarButtonLayout;ILandroid/view/View;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
