.class public final synthetic Lcom/sec/android/app/sbrowser/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/services/TerraceServiceManager$Factory;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/autofill/password/export/PasswordModuleLoader;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/autofill/password/export/PasswordModuleLoader;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/g;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/g;->b:Lcom/sec/android/app/sbrowser/autofill/password/export/PasswordModuleLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Lorg/chromium/mojo/bindings/Interface;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/g;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/g;->b:Lcom/sec/android/app/sbrowser/autofill/password/export/PasswordModuleLoader;

    packed-switch v0, :pswitch_data_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/autofill/password/export/PasswordModuleLoader;->getPasswordDifferenceChecker()Lcom/sec/android/app/sbrowser/autofill/password/export/PasswordDifferenceChecker;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/autofill/password/export/PasswordModuleLoader;->getPasswordStore()Lcom/sec/android/app/sbrowser/autofill/password/export/PasswordStore;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/autofill/password/export/PasswordModuleLoader;->getPasswordAutofillHook()Lcom/sec/android/app/sbrowser/autofill/password/export/PasswordAutofillHook;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
