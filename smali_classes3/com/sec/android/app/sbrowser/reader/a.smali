.class public final synthetic Lcom/sec/android/app/sbrowser/reader/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/function/Supplier;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/reader/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/reader/a;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/ReaderDetectionConfig;->a()Lcom/sec/android/app/sbrowser/reader/ReaderDetectionConfig;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/reader/ReaderDetectionOverrideListManager;->a()Lcom/sec/android/app/sbrowser/reader/ReaderDetectionOverrideListManager;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
