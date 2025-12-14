.class public final synthetic Lcom/sec/android/app/sbrowser/settings/autofill/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/authentication/Registration$Callback;
.implements Lcom/sec/android/app/sbrowser/authentication/Authenticator$Callback;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/autofill/e;->a:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/e;->a:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->n(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;)V

    return-void
.end method

.method public onResult(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/autofill/e;->a:Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;->h(Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;Z)V

    return-void
.end method
