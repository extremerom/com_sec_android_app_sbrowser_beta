.class Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment$1;
.super Landroid/text/InputFilter$LengthFilter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;

    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;

    const/16 p2, 0x800

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/settings/SetHomePageDialogFragment;->lengthLimitToast(I)V

    :cond_0
    return-object p1
.end method
