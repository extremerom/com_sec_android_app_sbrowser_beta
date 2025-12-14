.class public Lorg/chromium/content/browser/SpeechRecognitionImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/SpeechRecognitionImpl$Listener;,
        Lorg/chromium/content/browser/SpeechRecognitionImpl$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field private static sRecognitionProvider:Landroid/content/ComponentName;


# instance fields
.field private mContinuous:Z

.field private final mIntent:Landroid/content/Intent;

.field private final mListener:Landroid/speech/RecognitionListener;

.field private mNativeSpeechRecognizerImplAndroid:J

.field private mRecognizer:Landroid/speech/SpeechRecognizer;

.field private mState:I


# direct methods
.method private constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl;->mContinuous:Z

    iput-wide p1, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl;->mNativeSpeechRecognizerImplAndroid:J

    new-instance p1, Lorg/chromium/content/browser/SpeechRecognitionImpl$Listener;

    invoke-direct {p1, p0}, Lorg/chromium/content/browser/SpeechRecognitionImpl$Listener;-><init>(Lorg/chromium/content/browser/SpeechRecognitionImpl;)V

    iput-object p1, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl;->mListener:Landroid/speech/RecognitionListener;

    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl;->mIntent:Landroid/content/Intent;

    sget-object p2, Lorg/chromium/content/browser/SpeechRecognitionImpl;->sRecognitionProvider:Landroid/content/ComponentName;

    if-eqz p2, :cond_0

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    sget-object v0, Lorg/chromium/content/browser/SpeechRecognitionImpl;->sRecognitionProvider:Landroid/content/ComponentName;

    invoke-static {p2, v0}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/speech/SpeechRecognizer;

    move-result-object p2

    iput-object p2, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl;->mRecognizer:Landroid/speech/SpeechRecognizer;

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object p2

    iput-object p2, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl;->mRecognizer:Landroid/speech/SpeechRecognizer;

    :goto_0
    iget-object p0, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl;->mRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {p0, p1}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/content/browser/SpeechRecognitionImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl;->mContinuous:Z

    return p0
.end method

.method private abortRecognition()V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl;->mRecognizer:Landroid/speech/SpeechRecognizer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->cancel()V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/chromium/content/browser/SpeechRecognitionImpl;->terminate(I)V

    return-void
.end method

.method public static bridge synthetic b(Lorg/chromium/content/browser/SpeechRecognitionImpl;)J
    .locals 2

    iget-wide v0, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl;->mNativeSpeechRecognizerImplAndroid:J

    return-wide v0
.end method

.method public static bridge synthetic c(Lorg/chromium/content/browser/SpeechRecognitionImpl;I)V
    .locals 0

    iput p1, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl;->mState:I

    return-void
.end method

.method private static createRecognitionProvider()Landroid/content/ComponentName;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_1

    invoke-static {}, Lorg/chromium/base/BuildInfo;->getInstance()Lorg/chromium/base/BuildInfo;

    move-result-object v0

    iget-boolean v0, v0, Lorg/chromium/base/BuildInfo;->isAutomotive:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.googlequicksearchbox"

    const v1, 0x11e4cbb6

    invoke-static {v0, v1}, Lorg/chromium/content/browser/SpeechRecognitionImpl;->getComponent(Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "com.google.android.tts"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lorg/chromium/content/browser/SpeechRecognitionImpl;->getComponent(Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method private static createSpeechRecognition(J)Lorg/chromium/content/browser/SpeechRecognitionImpl;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/content/browser/SpeechRecognitionImpl;

    invoke-direct {v0, p0, p1}, Lorg/chromium/content/browser/SpeechRecognitionImpl;-><init>(J)V

    return-object v0
.end method

.method public static bridge synthetic d(Lorg/chromium/content/browser/SpeechRecognitionImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/SpeechRecognitionImpl;->terminate(I)V

    return-void
.end method

.method private static getComponent(Ljava/lang/String;I)Landroid/content/ComponentName;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.RecognitionService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lorg/chromium/base/PackageUtils;->getPackageVersion(Ljava/lang/String;)I

    move-result v2

    if-ge v2, p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/content/ComponentName;

    iget-object p1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v0, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static initialize()Z
    .locals 2

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->isRecognitionAvailable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lorg/chromium/content/browser/SpeechRecognitionImpl;->createRecognitionProvider()Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lorg/chromium/content/browser/SpeechRecognitionImpl;->sRecognitionProvider:Landroid/content/ComponentName;

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private startRecognition(Ljava/lang/String;ZZ)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl;->mRecognizer:Landroid/speech/SpeechRecognizer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean p2, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl;->mContinuous:Z

    iget-object v0, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl;->mIntent:Landroid/content/Intent;

    const-string v1, "android.speech.extra.DICTATION_MODE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p2, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl;->mIntent:Landroid/content/Intent;

    const-string v0, "android.speech.extra.LANGUAGE"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl;->mIntent:Landroid/content/Intent;

    const-string p2, "android.speech.extra.PARTIAL_RESULTS"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    iget-object p1, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl;->mRecognizer:Landroid/speech/SpeechRecognizer;

    iget-object p0, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lorg/chromium/content/R$string;->speech_recognition_service_not_found:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lorg/chromium/ui/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lorg/chromium/ui/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/ui/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private stopRecognition()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl;->mRecognizer:Landroid/speech/SpeechRecognizer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl;->mContinuous:Z

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->stopListening()V

    return-void
.end method

.method private terminate(I)V
    .locals 6

    iget-wide v0, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl;->mNativeSpeechRecognizerImplAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl;->mState:I

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {}, Lorg/chromium/content/browser/SpeechRecognitionImplJni;->get()Lorg/chromium/content/browser/SpeechRecognitionImpl$Natives;

    move-result-object v0

    iget-wide v4, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl;->mNativeSpeechRecognizerImplAndroid:J

    invoke-interface {v0, v4, v5, p0}, Lorg/chromium/content/browser/SpeechRecognitionImpl$Natives;->onSoundEnd(JLorg/chromium/content/browser/SpeechRecognitionImpl;)V

    :cond_1
    invoke-static {}, Lorg/chromium/content/browser/SpeechRecognitionImplJni;->get()Lorg/chromium/content/browser/SpeechRecognitionImpl$Natives;

    move-result-object v0

    iget-wide v4, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl;->mNativeSpeechRecognizerImplAndroid:J

    invoke-interface {v0, v4, v5, p0}, Lorg/chromium/content/browser/SpeechRecognitionImpl$Natives;->onAudioEnd(JLorg/chromium/content/browser/SpeechRecognitionImpl;)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl;->mState:I

    :cond_2
    if-eqz p1, :cond_3

    invoke-static {}, Lorg/chromium/content/browser/SpeechRecognitionImplJni;->get()Lorg/chromium/content/browser/SpeechRecognitionImpl$Natives;

    move-result-object v0

    iget-wide v4, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl;->mNativeSpeechRecognizerImplAndroid:J

    invoke-interface {v0, v4, v5, p0, p1}, Lorg/chromium/content/browser/SpeechRecognitionImpl$Natives;->onRecognitionError(JLorg/chromium/content/browser/SpeechRecognitionImpl;I)V

    :cond_3
    :try_start_0
    iget-object p1, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl;->mRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-static {p1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl;->mRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {p1}, Landroid/speech/SpeechRecognizer;->destroy()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Destroy threw exception "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl;->mRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechRecog"

    invoke-static {v1, v0, p1}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl;->mRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-static {}, Lorg/chromium/content/browser/SpeechRecognitionImplJni;->get()Lorg/chromium/content/browser/SpeechRecognitionImpl$Natives;

    move-result-object p1

    iget-wide v0, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl;->mNativeSpeechRecognizerImplAndroid:J

    invoke-interface {p1, v0, v1, p0}, Lorg/chromium/content/browser/SpeechRecognitionImpl$Natives;->onRecognitionEnd(JLorg/chromium/content/browser/SpeechRecognitionImpl;)V

    iput-wide v2, p0, Lorg/chromium/content/browser/SpeechRecognitionImpl;->mNativeSpeechRecognizerImplAndroid:J

    return-void
.end method
