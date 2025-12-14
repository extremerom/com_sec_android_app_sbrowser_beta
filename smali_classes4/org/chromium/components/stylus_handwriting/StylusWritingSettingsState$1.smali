.class Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState$1;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;


# direct methods
.method public constructor <init>(Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState$1;->this$0:Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onChange(Z)V
    .locals 0

    iget-object p1, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState$1;->this$0:Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;

    invoke-static {p1}, Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;->b(Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;)V

    iget-object p0, p0, Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState$1;->this$0:Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;

    invoke-static {p0}, Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;->a(Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;)V

    return-void
.end method
