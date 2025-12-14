.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/ui/page/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessEmptySpaceAdapter$Delegate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/G;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/G;->b:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEmptySpaceHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/G;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/G;->b:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;->topUrlEmptySpaceHeight()I

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessHeightManager;->topEmptySpaceHeight()I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
