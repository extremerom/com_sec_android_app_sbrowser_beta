.class Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar;->createView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar$1;->this$0:Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b01f5

    if-eq p1, v0, :cond_1

    const v0, 0x7f0b01fa

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar$1;->this$0:Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar;->onSecondaryButtonClicked()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar$1;->this$0:Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/ContentBlockPromotionInfoBar;->onPrimaryButtonClicked()V

    :goto_0
    return-void
.end method
