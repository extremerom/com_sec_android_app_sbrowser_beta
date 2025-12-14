.class Lorg/chromium/components/autofill_public/IAutofillHintsService$Stub$Proxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/autofill_public/IAutofillHintsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/autofill_public/IAutofillHintsService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/autofill_public/IAutofillHintsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method
