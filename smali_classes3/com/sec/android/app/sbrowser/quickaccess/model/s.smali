.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/model/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/s;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/s;->b:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/s;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/s;->b:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->e(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->d(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->c(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->b(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->a(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
