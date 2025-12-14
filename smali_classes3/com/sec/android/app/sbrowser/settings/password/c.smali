.class public final synthetic Lcom/sec/android/app/sbrowser/settings/password/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/auth/AuthCallback;
.implements Lcom/sec/android/app/sbrowser/common/model/authentication/Registration$Callback;


# instance fields
.field public final synthetic a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/password/c;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthResult(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/c;->a:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor$2;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor$2;->a(Lcom/sec/android/app/sbrowser/settings/password/AutofillPasswordEditor$2;Z)V

    return-void
.end method

.method public onResult(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/password/c;->a:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/password/WebSigninPreferenceFragment;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/password/WebSigninPreferenceFragment;->h(Lcom/sec/android/app/sbrowser/settings/password/WebSigninPreferenceFragment;Z)V

    return-void
.end method
