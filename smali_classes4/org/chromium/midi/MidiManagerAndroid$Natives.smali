.class interface abstract Lorg/chromium/midi/MidiManagerAndroid$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/midi/MidiManagerAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract onAttached(JLorg/chromium/midi/MidiDeviceAndroid;)V
.end method

.method public abstract onDetached(JLorg/chromium/midi/MidiDeviceAndroid;)V
.end method

.method public abstract onInitializationFailed(J)V
.end method

.method public abstract onInitialized(J[Lorg/chromium/midi/MidiDeviceAndroid;)V
.end method
