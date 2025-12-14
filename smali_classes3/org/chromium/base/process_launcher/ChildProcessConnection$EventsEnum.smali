.class interface abstract annotation Lorg/chromium/base/process_launcher/ChildProcessConnection$EventsEnum;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/process_launcher/ChildProcessConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "EventsEnum"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final COUNT:I = 0x4

.field public static final FALLBACK_ON_TIMEOUT_SANDBOXED:I = 0x2

.field public static final FALLBACK_ON_TIMEOUT_UNSANDBOXED:I = 0x3

.field public static final SCHEDULE_TIMEOUT_SANDBOXED:I = 0x0

.field public static final SCHEDULE_TIMEOUT_UNSANDBOXED:I = 0x1
