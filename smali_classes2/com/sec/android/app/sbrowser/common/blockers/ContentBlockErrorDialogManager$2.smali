.class Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager;->showValidationErrorDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager$2;->this$0:Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockErrorDialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p0, "609"

    const-string p2, "6125"

    invoke-static {p0, p2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
