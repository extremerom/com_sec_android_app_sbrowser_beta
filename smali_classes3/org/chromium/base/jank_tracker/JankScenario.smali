.class public Lorg/chromium/base/jank_tracker/JankScenario;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/jank_tracker/JankScenario$Type;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field public static final COMBINED_WEBVIEW_SCROLLING:Lorg/chromium/base/jank_tracker/JankScenario;

.field public static final FEED_SCROLLING:Lorg/chromium/base/jank_tracker/JankScenario;

.field public static final NEW_TAB_PAGE:Lorg/chromium/base/jank_tracker/JankScenario;

.field public static final OMNIBOX_FOCUS:Lorg/chromium/base/jank_tracker/JankScenario;

.field public static final OPEN_LINK_IN_NEW_TAB:Lorg/chromium/base/jank_tracker/JankScenario;

.field public static final PERIODIC_REPORTING:Lorg/chromium/base/jank_tracker/JankScenario;

.field public static final STARTUP:Lorg/chromium/base/jank_tracker/JankScenario;

.field public static final START_SURFACE_HOMEPAGE:Lorg/chromium/base/jank_tracker/JankScenario;

.field public static final START_SURFACE_TAB_SWITCHER:Lorg/chromium/base/jank_tracker/JankScenario;

.field public static final TAB_SWITCHER:Lorg/chromium/base/jank_tracker/JankScenario;

.field public static final WEBVIEW_SCROLLING:Lorg/chromium/base/jank_tracker/JankScenario;


# instance fields
.field private final mId:J

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/chromium/base/jank_tracker/JankScenario;

    const/4 v1, 0x1

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/base/jank_tracker/JankScenario;-><init>(IJ)V

    sput-object v0, Lorg/chromium/base/jank_tracker/JankScenario;->PERIODIC_REPORTING:Lorg/chromium/base/jank_tracker/JankScenario;

    new-instance v0, Lorg/chromium/base/jank_tracker/JankScenario;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/base/jank_tracker/JankScenario;-><init>(IJ)V

    sput-object v0, Lorg/chromium/base/jank_tracker/JankScenario;->OMNIBOX_FOCUS:Lorg/chromium/base/jank_tracker/JankScenario;

    new-instance v0, Lorg/chromium/base/jank_tracker/JankScenario;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/base/jank_tracker/JankScenario;-><init>(IJ)V

    sput-object v0, Lorg/chromium/base/jank_tracker/JankScenario;->NEW_TAB_PAGE:Lorg/chromium/base/jank_tracker/JankScenario;

    new-instance v0, Lorg/chromium/base/jank_tracker/JankScenario;

    const/4 v1, 0x4

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/base/jank_tracker/JankScenario;-><init>(IJ)V

    sput-object v0, Lorg/chromium/base/jank_tracker/JankScenario;->STARTUP:Lorg/chromium/base/jank_tracker/JankScenario;

    new-instance v0, Lorg/chromium/base/jank_tracker/JankScenario;

    const/4 v1, 0x5

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/base/jank_tracker/JankScenario;-><init>(IJ)V

    sput-object v0, Lorg/chromium/base/jank_tracker/JankScenario;->TAB_SWITCHER:Lorg/chromium/base/jank_tracker/JankScenario;

    new-instance v0, Lorg/chromium/base/jank_tracker/JankScenario;

    const/4 v1, 0x6

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/base/jank_tracker/JankScenario;-><init>(IJ)V

    sput-object v0, Lorg/chromium/base/jank_tracker/JankScenario;->OPEN_LINK_IN_NEW_TAB:Lorg/chromium/base/jank_tracker/JankScenario;

    new-instance v0, Lorg/chromium/base/jank_tracker/JankScenario;

    const/4 v1, 0x7

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/base/jank_tracker/JankScenario;-><init>(IJ)V

    sput-object v0, Lorg/chromium/base/jank_tracker/JankScenario;->START_SURFACE_HOMEPAGE:Lorg/chromium/base/jank_tracker/JankScenario;

    new-instance v0, Lorg/chromium/base/jank_tracker/JankScenario;

    const/16 v1, 0x8

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/base/jank_tracker/JankScenario;-><init>(IJ)V

    sput-object v0, Lorg/chromium/base/jank_tracker/JankScenario;->START_SURFACE_TAB_SWITCHER:Lorg/chromium/base/jank_tracker/JankScenario;

    new-instance v0, Lorg/chromium/base/jank_tracker/JankScenario;

    const/16 v1, 0x9

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/base/jank_tracker/JankScenario;-><init>(IJ)V

    sput-object v0, Lorg/chromium/base/jank_tracker/JankScenario;->FEED_SCROLLING:Lorg/chromium/base/jank_tracker/JankScenario;

    new-instance v0, Lorg/chromium/base/jank_tracker/JankScenario;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/base/jank_tracker/JankScenario;-><init>(IJ)V

    sput-object v0, Lorg/chromium/base/jank_tracker/JankScenario;->WEBVIEW_SCROLLING:Lorg/chromium/base/jank_tracker/JankScenario;

    new-instance v0, Lorg/chromium/base/jank_tracker/JankScenario;

    const/16 v1, 0xb

    invoke-direct {v0, v1, v2, v3}, Lorg/chromium/base/jank_tracker/JankScenario;-><init>(IJ)V

    sput-object v0, Lorg/chromium/base/jank_tracker/JankScenario;->COMBINED_WEBVIEW_SCROLLING:Lorg/chromium/base/jank_tracker/JankScenario;

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/chromium/base/jank_tracker/JankScenario;->mType:I

    iput-wide p2, p0, Lorg/chromium/base/jank_tracker/JankScenario;->mId:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Lorg/chromium/base/jank_tracker/JankScenario;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lorg/chromium/base/jank_tracker/JankScenario;

    iget v1, p0, Lorg/chromium/base/jank_tracker/JankScenario;->mType:I

    invoke-virtual {p1}, Lorg/chromium/base/jank_tracker/JankScenario;->type()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-wide v1, p0, Lorg/chromium/base/jank_tracker/JankScenario;->mId:J

    invoke-virtual {p1}, Lorg/chromium/base/jank_tracker/JankScenario;->id()J

    move-result-wide p0

    cmp-long p0, v1, p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lorg/chromium/base/jank_tracker/JankScenario;->mType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/base/jank_tracker/JankScenario;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public id()J
    .locals 2

    iget-wide v0, p0, Lorg/chromium/base/jank_tracker/JankScenario;->mId:J

    return-wide v0
.end method

.method public type()I
    .locals 0

    iget p0, p0, Lorg/chromium/base/jank_tracker/JankScenario;->mType:I

    return p0
.end method
