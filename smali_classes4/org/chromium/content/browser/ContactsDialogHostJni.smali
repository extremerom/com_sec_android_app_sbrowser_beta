.class Lorg/chromium/content/browser/ContactsDialogHostJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/ContactsDialogHost$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lorg/chromium/content/browser/ContactsDialogHost$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/content/browser/ContactsDialogHostJni;

    invoke-direct {v0}, Lorg/chromium/content/browser/ContactsDialogHostJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public endWithPermissionDenied(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MOM50EIZ(J)V

    return-void
.end method
