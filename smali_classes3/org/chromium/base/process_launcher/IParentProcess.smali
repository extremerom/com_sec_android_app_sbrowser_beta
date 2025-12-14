.class public interface abstract Lorg/chromium/base/process_launcher/IParentProcess;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/process_launcher/IParentProcess$_Parcel;,
        Lorg/chromium/base/process_launcher/IParentProcess$Stub;,
        Lorg/chromium/base/process_launcher/IParentProcess$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "org.chromium.base.process_launcher.IParentProcess"


# virtual methods
.method public abstract finishSetupConnection(IIJLandroid/os/Bundle;)V
.end method

.method public abstract reportCleanExit()V
.end method

.method public abstract reportExceptionInInit(Ljava/lang/String;)V
.end method
