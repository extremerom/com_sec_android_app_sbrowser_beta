.class Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate$TouchDelegateInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TouchDelegateInfo"
.end annotation


# instance fields
.field private final mBottom:I

.field private final mLeft:I

.field private final mRight:I

.field private final mTop:I


# direct methods
.method private constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate$TouchDelegateInfo;->mLeft:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate$TouchDelegateInfo;->mTop:I

    iput p3, p0, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate$TouchDelegateInfo;->mRight:I

    iput p4, p0, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate$TouchDelegateInfo;->mBottom:I

    return-void
.end method

.method public synthetic constructor <init>(IIIII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate$TouchDelegateInfo;-><init>(IIII)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate$TouchDelegateInfo;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate$TouchDelegateInfo;->mBottom:I

    return p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate$TouchDelegateInfo;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate$TouchDelegateInfo;->mLeft:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate$TouchDelegateInfo;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate$TouchDelegateInfo;->mRight:I

    return p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate$TouchDelegateInfo;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/widget/BaseTouchDelegate$TouchDelegateInfo;->mTop:I

    return p0
.end method
