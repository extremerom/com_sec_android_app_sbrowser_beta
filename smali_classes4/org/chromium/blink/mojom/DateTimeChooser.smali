.class public interface abstract Lorg/chromium/blink/mojom/DateTimeChooser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/DateTimeChooser$OpenDateTimeDialog_Response;,
        Lorg/chromium/blink/mojom/DateTimeChooser$Proxy;
    }
.end annotation


# virtual methods
.method public abstract closeDateTimeDialog()V
.end method

.method public abstract openDateTimeDialog(Lorg/chromium/blink/mojom/DateTimeDialogValue;Lorg/chromium/blink/mojom/DateTimeChooser$OpenDateTimeDialog_Response;)V
.end method
