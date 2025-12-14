.class public Lorg/chromium/content_public/browser/LoadCommittedDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private final mDidReplaceEntry:Z

.field private final mHttpStatusCode:I

.field private final mIsMainFrame:Z

.field private final mIsSameDocument:Z

.field private final mPreviousEntryIndex:I

.field private final mPreviousMainFrameUrl:Lorg/chromium/url/GURL;


# direct methods
.method public constructor <init>(ILorg/chromium/url/GURL;ZZZI)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/chromium/content_public/browser/LoadCommittedDetails;->mPreviousEntryIndex:I

    iput-object p2, p0, Lorg/chromium/content_public/browser/LoadCommittedDetails;->mPreviousMainFrameUrl:Lorg/chromium/url/GURL;

    iput-boolean p3, p0, Lorg/chromium/content_public/browser/LoadCommittedDetails;->mDidReplaceEntry:Z

    iput-boolean p4, p0, Lorg/chromium/content_public/browser/LoadCommittedDetails;->mIsSameDocument:Z

    iput-boolean p5, p0, Lorg/chromium/content_public/browser/LoadCommittedDetails;->mIsMainFrame:Z

    iput p6, p0, Lorg/chromium/content_public/browser/LoadCommittedDetails;->mHttpStatusCode:I

    return-void
.end method


# virtual methods
.method public isMainFrame()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/content_public/browser/LoadCommittedDetails;->mIsMainFrame:Z

    return p0
.end method

.method public isSameDocument()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/content_public/browser/LoadCommittedDetails;->mIsSameDocument:Z

    return p0
.end method
