.class Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorFieldValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;->getPhoneValidator()Lcom/sec/android/app/sbrowser/payments/standard/widget/prefeditor/EditorFieldModel$EditorFieldValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor$5;->this$0:Lcom/sec/android/app/sbrowser/payments/standard/AddressEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid(Ljava/lang/CharSequence;)Z
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
