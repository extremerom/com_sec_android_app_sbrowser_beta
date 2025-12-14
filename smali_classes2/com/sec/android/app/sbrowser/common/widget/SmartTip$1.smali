.class Lcom/sec/android/app/sbrowser/common/widget/SmartTip$1;
.super Lcom/sec/sbrowser/spl/wrapper/SemTipPopup$OnStateChangeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/widget/SmartTip;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/widget/SmartTip;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/widget/SmartTip;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/widget/SmartTip$1;->this$0:Lcom/sec/android/app/sbrowser/common/widget/SmartTip;

    invoke-direct {p0}, Lcom/sec/sbrowser/spl/wrapper/SemTipPopup$OnStateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/widget/SmartTip$1;->this$0:Lcom/sec/android/app/sbrowser/common/widget/SmartTip;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/widget/SmartTip;->onStateChanged(I)V

    return-void
.end method
