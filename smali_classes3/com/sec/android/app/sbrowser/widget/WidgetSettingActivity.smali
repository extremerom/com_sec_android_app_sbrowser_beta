.class public final Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;
.super Lcom/sec/android/app/sbrowser/common/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0080\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008.\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0015\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0019\u0010\t\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0014\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\nJ\r\u0010\r\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\r\u0010\u0005J\u000f\u0010\u000e\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u0008\u000e\u0010\u0005J\u000f\u0010\u000f\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0005J\r\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u0018\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\r\u0010\u001b\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u001b\u0010\u0005J\r\u0010\u001c\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u001c\u0010\u0005J\u001f\u0010 \u001a\u00020\u00082\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001f\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008 \u0010!J\u000f\u0010\"\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u0008\"\u0010\u0005J\u000f\u0010#\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u0008#\u0010\u0005J\u001f\u0010(\u001a\u00020\u00102\u0006\u0010%\u001a\u00020$2\u0006\u0010\'\u001a\u00020&H\u0016\u00a2\u0006\u0004\u0008(\u0010)J\u0017\u0010,\u001a\u00020\u00082\u0006\u0010+\u001a\u00020*H\u0016\u00a2\u0006\u0004\u0008,\u0010-J\u0017\u00100\u001a\u00020\u00082\u0006\u0010/\u001a\u00020.H\u0016\u00a2\u0006\u0004\u00080\u00101J\u000f\u00102\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u00082\u0010\u0005J\u000f\u00103\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u00083\u0010\u0005J\u0017\u00106\u001a\u00020\u00082\u0006\u00105\u001a\u000204H\u0002\u00a2\u0006\u0004\u00086\u00107J\u0017\u00109\u001a\u00020\u00082\u0006\u00108\u001a\u00020$H\u0002\u00a2\u0006\u0004\u00089\u0010:J\u000f\u0010<\u001a\u00020;H\u0002\u00a2\u0006\u0004\u0008<\u0010=J\u0017\u0010>\u001a\u00020\u00082\u0006\u00105\u001a\u000204H\u0002\u00a2\u0006\u0004\u0008>\u00107J\u000f\u0010?\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008?\u0010\u0005J\u000f\u0010@\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008@\u0010\u0005J\u000f\u0010A\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008A\u0010\u0005J\u0017\u0010C\u001a\u00020\u00082\u0006\u0010B\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008C\u0010DJ\u000f\u0010E\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008E\u0010\u0012J\u000f\u0010F\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008F\u0010\u0005J\u0017\u0010H\u001a\u00020.2\u0006\u0010G\u001a\u00020$H\u0002\u00a2\u0006\u0004\u0008H\u0010IJ\'\u0010M\u001a\u00020\u00082\u0006\u0010J\u001a\u00020.2\u0006\u0010K\u001a\u00020.2\u0006\u0010L\u001a\u00020.H\u0002\u00a2\u0006\u0004\u0008M\u0010NJ\u0017\u0010P\u001a\u00020\u00082\u0006\u0010O\u001a\u00020.H\u0002\u00a2\u0006\u0004\u0008P\u00101J!\u0010Q\u001a\u00020\u00082\u0006\u00105\u001a\u0002042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002\u00a2\u0006\u0004\u0008Q\u0010RJ\u000f\u0010S\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008S\u0010\u0005J\u000f\u0010T\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008T\u0010\u0012J\u000f\u0010U\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008U\u0010\u0012J\u000f\u0010V\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008V\u0010\u0005J\u000f\u0010W\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008W\u0010\u0005J\u000f\u0010X\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008X\u0010\u0005J\u0017\u0010Z\u001a\u00020\u00082\u0006\u0010Y\u001a\u00020$H\u0002\u00a2\u0006\u0004\u0008Z\u0010:J\u0017\u0010[\u001a\u00020.2\u0006\u00108\u001a\u00020$H\u0002\u00a2\u0006\u0004\u0008[\u0010IJ\u000f\u0010\\\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\\\u0010\u0005J\u000f\u0010]\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008]\u0010\u0005J\u000f\u0010^\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008^\u0010\u0005J\u000f\u0010_\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008_\u0010\u0005J\u000f\u0010`\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008`\u0010\u0005J\u000f\u0010a\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008a\u0010\u0005J\u000f\u0010b\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008b\u0010\u0005J\u000f\u0010c\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008c\u0010\u0005J\u000f\u0010d\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008d\u0010\u0012J\u000f\u0010e\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008e\u0010\u0005R\u0016\u0010f\u001a\u0002048\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008f\u0010gR\u0016\u0010h\u001a\u00020$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008h\u0010iR\u0016\u0010k\u001a\u00020j8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008k\u0010lR\u0016\u0010n\u001a\u00020m8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008n\u0010oR\u0016\u0010p\u001a\u00020m8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008p\u0010oR\u0016\u0010q\u001a\u0002048\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008q\u0010gR\u0016\u0010s\u001a\u00020r8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008s\u0010tR\u0016\u0010v\u001a\u00020u8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008v\u0010wR\u0016\u0010x\u001a\u00020u8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008x\u0010wR\u0016\u0010y\u001a\u00020u8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008y\u0010wR\u0016\u0010{\u001a\u00020z8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008{\u0010|R\u0016\u0010}\u001a\u00020z8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008}\u0010|R\u0016\u0010~\u001a\u00020z8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008~\u0010|R\u0019\u0010\u0080\u0001\u001a\u00020\u007f8\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u0080\u0001\u0010\u0081\u0001R\u001a\u0010\u0083\u0001\u001a\u00030\u0082\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u0083\u0001\u0010\u0084\u0001R\u001a\u0010\u0085\u0001\u001a\u00030\u0082\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u0085\u0001\u0010\u0084\u0001R\u0019\u0010\u0086\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0086\u0001\u0010\u0087\u0001R\u001a\u0010\u0089\u0001\u001a\u00030\u0088\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u0089\u0001\u0010\u008a\u0001R\u0018\u0010\u008b\u0001\u001a\u00020u8\u0002@\u0002X\u0082.\u00a2\u0006\u0007\n\u0005\u0008\u008b\u0001\u0010wR\u0018\u0010\u008c\u0001\u001a\u00020r8\u0002@\u0002X\u0082.\u00a2\u0006\u0007\n\u0005\u0008\u008c\u0001\u0010tR\u0018\u0010\u008d\u0001\u001a\u00020r8\u0002@\u0002X\u0082.\u00a2\u0006\u0007\n\u0005\u0008\u008d\u0001\u0010tR\u0018\u0010\u008e\u0001\u001a\u00020r8\u0002@\u0002X\u0082.\u00a2\u0006\u0007\n\u0005\u0008\u008e\u0001\u0010tR\u0018\u0010\u008f\u0001\u001a\u00020$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u008f\u0001\u0010iR\u0018\u0010\u0090\u0001\u001a\u00020$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0090\u0001\u0010iR\u0019\u0010\u0091\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0091\u0001\u0010\u0087\u0001R\u0019\u0010\u0092\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0092\u0001\u0010\u0087\u0001R\u0018\u0010\u0093\u0001\u001a\u00020$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0093\u0001\u0010iR\u0019\u0010\u0094\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0094\u0001\u0010\u0087\u0001R\u0018\u0010\u0095\u0001\u001a\u00020$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0095\u0001\u0010iR\u0019\u0010\u0096\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0096\u0001\u0010\u0087\u0001R\u0018\u0010\u0097\u0001\u001a\u00020$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0097\u0001\u0010iR\u0019\u0010\u0098\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0098\u0001\u0010\u0087\u0001R\u0018\u0010\u0099\u0001\u001a\u00020$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0099\u0001\u0010iR\u001a\u0010\u009b\u0001\u001a\u00030\u009a\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u009b\u0001\u0010\u009c\u0001R\u001a\u0010\u009e\u0001\u001a\u00030\u009d\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u009e\u0001\u0010\u009f\u0001R\u001a\u0010\u00a1\u0001\u001a\u00030\u00a0\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00a1\u0001\u0010\u00a2\u0001R\u001a\u0010\u00a4\u0001\u001a\u00030\u00a3\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00a4\u0001\u0010\u00a5\u0001R\u0019\u0010\u00a6\u0001\u001a\u00020\u00178\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00a6\u0001\u0010\u00a7\u0001R\u0019\u0010\u00a8\u0001\u001a\u00020\u00178\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00a8\u0001\u0010\u00a7\u0001R\u001a\u0010\u00aa\u0001\u001a\u00030\u00a9\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00aa\u0001\u0010\u00ab\u0001R\u001a\u0010\u00ad\u0001\u001a\u00030\u00ac\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00ad\u0001\u0010\u00ae\u0001R\u001a\u0010\u00b0\u0001\u001a\u00030\u00af\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00b0\u0001\u0010\u00b1\u0001R\u0017\u0010\u00b2\u0001\u001a\u00020.8\u0002X\u0082D\u00a2\u0006\u0008\n\u0006\u0008\u00b2\u0001\u0010\u00b3\u0001R\u0017\u0010\u00b4\u0001\u001a\u00020.8\u0002X\u0082D\u00a2\u0006\u0008\n\u0006\u0008\u00b4\u0001\u0010\u00b3\u0001R\u0017\u0010\u00b5\u0001\u001a\u00020.8\u0002X\u0082D\u00a2\u0006\u0008\n\u0006\u0008\u00b5\u0001\u0010\u00b3\u0001R\u0017\u0010\u00b6\u0001\u001a\u00020.8\u0002X\u0082D\u00a2\u0006\u0008\n\u0006\u0008\u00b6\u0001\u0010\u00b3\u0001R\u0017\u0010\u00b7\u0001\u001a\u00020.8\u0002X\u0082D\u00a2\u0006\u0008\n\u0006\u0008\u00b7\u0001\u0010\u00b3\u0001R\u0018\u0010\u00b8\u0001\u001a\u00020$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00b8\u0001\u0010iR\u0018\u0010\u00b9\u0001\u001a\u00020$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00b9\u0001\u0010iR\u0018\u0010\u00ba\u0001\u001a\u00020$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00ba\u0001\u0010iR\u0018\u0010\u00bb\u0001\u001a\u00020$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u00bb\u0001\u0010iR\u0018\u0010\u00bd\u0001\u001a\u00030\u00bc\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00bd\u0001\u0010\u00be\u0001R\u0018\u0010\u00bf\u0001\u001a\u00030\u00bc\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00bf\u0001\u0010\u00be\u0001R,\u0010\u00c1\u0001\u001a\u0005\u0018\u00010\u00c0\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00c1\u0001\u0010\u00c2\u0001\u001a\u0006\u0008\u00c3\u0001\u0010\u00c4\u0001\"\u0006\u0008\u00c5\u0001\u0010\u00c6\u0001R\u001c\u0010\u00c8\u0001\u001a\u0005\u0018\u00010\u00c7\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00c8\u0001\u0010\u00c9\u0001R\u0016\u0010\u00ca\u0001\u001a\u00020\u00108BX\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00ca\u0001\u0010\u0012R\u0016\u0010\u00cb\u0001\u001a\u00020\u00108BX\u0082\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00cb\u0001\u0010\u0012\u00a8\u0006\u00cc\u0001"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;",
        "Lcom/sec/android/app/sbrowser/common/BaseActivity;",
        "Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ldb/r;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "outState",
        "onSaveInstanceState",
        "setLayoutChangeListener",
        "onResume",
        "onBackPressed",
        "",
        "isLargeWidget",
        "()Z",
        "Landroid/view/Menu;",
        "menu",
        "onCreateOptionsMenu",
        "(Landroid/view/Menu;)Z",
        "Landroid/view/MenuItem;",
        "item",
        "onOptionsItemSelected",
        "(Landroid/view/MenuItem;)Z",
        "onCancelPressed",
        "onDonePressed",
        "Landroid/widget/CompoundButton;",
        "buttonView",
        "isChecked",
        "onCheckedChanged",
        "(Landroid/widget/CompoundButton;Z)V",
        "onDestroy",
        "onPause",
        "",
        "keyCode",
        "Landroid/view/KeyEvent;",
        "event",
        "onKeyUp",
        "(ILandroid/view/KeyEvent;)Z",
        "Landroid/content/res/Configuration;",
        "newConfig",
        "onConfigurationChanged",
        "(Landroid/content/res/Configuration;)V",
        "",
        "key",
        "onBrowserPreferenceChanged",
        "(Ljava/lang/String;)V",
        "setMatchPhoneorTabletSettingText",
        "setLayoutMargin",
        "Landroid/view/View;",
        "view",
        "updatePreviewIfNeeded",
        "(Landroid/view/View;)V",
        "transparency",
        "applyBlurBackground",
        "(I)V",
        "",
        "getRoundedCornerRadius",
        "()F",
        "setActionBar",
        "setColorsAsWallpaper",
        "setBackgroundColor",
        "setPreviewImage",
        "isLight",
        "setListDivider",
        "(Z)V",
        "shouldShowDarkWidgetPreview",
        "setPreviewBackground",
        "id",
        "getBGColorDescription",
        "(I)Ljava/lang/String;",
        "eventId",
        "statusId",
        "description",
        "sendSALogging",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "message",
        "showSettingsDiscardDialog",
        "inflateElements",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "initBackgroundShapeView",
        "isMediumWidget",
        "isExtraLargeLongWidget",
        "updateBackgroundShapeView",
        "checkIntent",
        "setPreviewImageColors",
        "colorWidgetTitle",
        "setColorForWidgetTitle",
        "getCurrentTransparentText",
        "restoringPreference",
        "setBottomGroupColor",
        "initializePreferencesValues",
        "updateSeekBarProgress",
        "updateSettingValue",
        "doUpdateAppWidget",
        "updateSettingPreferenceAppWidget",
        "setMenuOptionsVisibility",
        "isLandscapeLayout",
        "setPreviewTitle",
        "mView",
        "Landroid/view/View;",
        "mAppWidgetId",
        "I",
        "Landroid/content/Context;",
        "mContext",
        "Landroid/content/Context;",
        "Landroid/widget/ImageView;",
        "mPreviewImageView",
        "Landroid/widget/ImageView;",
        "mListPreviewImageView",
        "mListPreviewBlurBg",
        "Landroid/widget/LinearLayout;",
        "mSeekbarLayout",
        "Landroid/widget/LinearLayout;",
        "Landroid/widget/TextView;",
        "mNoItemText",
        "Landroid/widget/TextView;",
        "mSeekbarText",
        "mTitle",
        "Landroid/widget/RadioButton;",
        "mWhiteRadioButton",
        "Landroid/widget/RadioButton;",
        "mBlackRadioButton",
        "mMatchPhoneSettingRadioButton",
        "Landroid/widget/RadioGroup;",
        "mColorGroup",
        "Landroid/widget/RadioGroup;",
        "Landroidx/appcompat/widget/SwitchCompat;",
        "mSwitch",
        "Landroidx/appcompat/widget/SwitchCompat;",
        "mBackgroundSwitch",
        "mIsNightModeEnabled",
        "Z",
        "Landroidx/appcompat/widget/SeslSeekBar;",
        "mSeekbar",
        "Landroidx/appcompat/widget/SeslSeekBar;",
        "mColorLabel",
        "mSwitchContainer",
        "mWidgetBackGroundColorContainer",
        "mWidgetTransparencyContainer",
        "mAlphaValue",
        "mColorMode",
        "mMatchDarkMode",
        "mIsNeedRefresh",
        "mInitialAlphaValue",
        "mInitialMatchDarkModeValue",
        "mInitialColorMode",
        "mInitialBackgroundMode",
        "mInitialBackgroundShape",
        "mBackgroundMode",
        "mBackgroundShape",
        "Landroid/widget/ListView;",
        "mListView",
        "Landroid/widget/ListView;",
        "Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter;",
        "mAdapter",
        "Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter;",
        "Lcom/sec/android/app/sbrowser/widget/WidgetListDataModel;",
        "mWidgetListDataModel",
        "Lcom/sec/android/app/sbrowser/widget/WidgetListDataModel;",
        "Landroidx/appcompat/widget/ActionMenuView;",
        "mBottomNavigationView",
        "Landroidx/appcompat/widget/ActionMenuView;",
        "mTopDoneMenu",
        "Landroid/view/MenuItem;",
        "mTopCancelMenu",
        "Landroid/view/View$OnLayoutChangeListener;",
        "mOnLayoutChangeListener",
        "Landroid/view/View$OnLayoutChangeListener;",
        "Lcom/sec/android/app/sbrowser/widget/WidgetSettingListDataFactory;",
        "mWidgetSettingListDataFactory",
        "Lcom/sec/android/app/sbrowser/widget/WidgetSettingListDataFactory;",
        "Lcom/sec/android/app/sbrowser/common/device/BackPressManager;",
        "mBackPressManager",
        "Lcom/sec/android/app/sbrowser/common/device/BackPressManager;",
        "TAG",
        "Ljava/lang/String;",
        "KEY_COLOR_MODE",
        "KEY_BACKGROUND_ALPHA_VALUE",
        "KEY_MATCH_DARK_MODE",
        "KEY_WIDGET_BACKGROUND_SHAPE",
        "mCol",
        "mRow",
        "mWidth",
        "mHeight",
        "",
        "backgroundShapeArrayId",
        "[I",
        "backgroundShapeCheckId",
        "Lt/X0;",
        "mSeekBarChangeListener",
        "Lt/X0;",
        "getMSeekBarChangeListener",
        "()Lt/X0;",
        "setMSeekBarChangeListener",
        "(Lt/X0;)V",
        "Landroid/view/View$OnClickListener;",
        "mClickListener",
        "Landroid/view/View$OnClickListener;",
        "isSettingsUnChanged",
        "isDarkFontRequired",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private final KEY_BACKGROUND_ALPHA_VALUE:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final KEY_COLOR_MODE:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final KEY_MATCH_DARK_MODE:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final KEY_WIDGET_BACKGROUND_SHAPE:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final backgroundShapeArrayId:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final backgroundShapeCheckId:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mAdapter:Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter;

.field private mAlphaValue:I

.field private mAppWidgetId:I

.field private mBackPressManager:Lcom/sec/android/app/sbrowser/common/device/BackPressManager;

.field private mBackgroundMode:Z

.field private mBackgroundShape:I

.field private mBackgroundSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field private mBlackRadioButton:Landroid/widget/RadioButton;

.field private mBottomNavigationView:Landroidx/appcompat/widget/ActionMenuView;

.field private mClickListener:Landroid/view/View$OnClickListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mCol:I

.field private mColorGroup:Landroid/widget/RadioGroup;

.field private mColorLabel:Landroid/widget/TextView;

.field private mColorMode:I

.field private mContext:Landroid/content/Context;

.field private mHeight:I

.field private mInitialAlphaValue:I

.field private mInitialBackgroundMode:Z

.field private mInitialBackgroundShape:I

.field private mInitialColorMode:I

.field private mInitialMatchDarkModeValue:Z

.field private mIsNeedRefresh:Z

.field private mIsNightModeEnabled:Z

.field private mListPreviewBlurBg:Landroid/view/View;

.field private mListPreviewImageView:Landroid/widget/ImageView;

.field private mListView:Landroid/widget/ListView;

.field private mMatchDarkMode:Z

.field private mMatchPhoneSettingRadioButton:Landroid/widget/RadioButton;

.field private mNoItemText:Landroid/widget/TextView;

.field private mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mPreviewImageView:Landroid/widget/ImageView;

.field private mRow:I

.field private mSeekBarChangeListener:Lt/X0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mSeekbar:Landroidx/appcompat/widget/SeslSeekBar;

.field private mSeekbarLayout:Landroid/widget/LinearLayout;

.field private mSeekbarText:Landroid/widget/TextView;

.field private mSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field private mSwitchContainer:Landroid/widget/LinearLayout;

.field private mTitle:Landroid/widget/TextView;

.field private mTopCancelMenu:Landroid/view/MenuItem;

.field private mTopDoneMenu:Landroid/view/MenuItem;

.field private mView:Landroid/view/View;

.field private mWhiteRadioButton:Landroid/widget/RadioButton;

.field private mWidgetBackGroundColorContainer:Landroid/widget/LinearLayout;

.field private mWidgetListDataModel:Lcom/sec/android/app/sbrowser/widget/WidgetListDataModel;

.field private mWidgetSettingListDataFactory:Lcom/sec/android/app/sbrowser/widget/WidgetSettingListDataFactory;

.field private mWidgetTransparencyContainer:Landroid/widget/LinearLayout;

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/BaseActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mMatchDarkMode:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mInitialMatchDarkModeValue:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mInitialBackgroundMode:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mBackgroundMode:Z

    const-string v0, "WidgetSettingActivity"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->TAG:Ljava/lang/String;

    const-string v0, "colorMode"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->KEY_COLOR_MODE:Ljava/lang/String;

    const-string v0, "alphaValue"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->KEY_BACKGROUND_ALPHA_VALUE:Ljava/lang/String;

    const-string v0, "matchDarkMode"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->KEY_MATCH_DARK_MODE:Ljava/lang/String;

    const-string v0, "keyBackgroundShape"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->KEY_WIDGET_BACKGROUND_SHAPE:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mCol:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mRow:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mWidth:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mHeight:I

    const v0, 0x7f0b0a0b

    const v1, 0x7f0b0695

    const v2, 0x7f0b0819

    const v3, 0x7f0b0699

    const v4, 0x7f0b0a10

    filled-new-array {v2, v0, v1, v3, v4}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->backgroundShapeArrayId:[I

    const v0, 0x7f0b0a0a

    const v1, 0x7f0b0694

    const v2, 0x7f0b0818

    const v3, 0x7f0b0698

    const v4, 0x7f0b0a0f

    filled-new-array {v2, v0, v1, v3, v4}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->backgroundShapeCheckId:[I

    new-instance v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity$mSeekBarChangeListener$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity$mSeekBarChangeListener$1;-><init>(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mSeekBarChangeListener:Lt/X0;

    new-instance v0, Lcom/sec/android/app/sbrowser/save_image/d;

    const/16 v1, 0xe

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/save_image/d;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static final synthetic access$getCurrentTransparentText(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->getCurrentTransparentText(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMAdapter$p(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;)Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mAdapter:Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter;

    return-object p0
.end method

.method public static final synthetic access$getMAlphaValue$p(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mAlphaValue:I

    return p0
.end method

.method public static final synthetic access$getMAppWidgetId$p(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mAppWidgetId:I

    return p0
.end method

.method public static final synthetic access$getMContext$p(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getMIsNeedRefresh$p(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mIsNeedRefresh:Z

    return p0
.end method

.method public static final synthetic access$getMListView$p(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;)Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method public static final synthetic access$getMSeekbarLayout$p(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mSeekbarLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static final synthetic access$getMSeekbarText$p(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mSeekbarText:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic access$getMWidgetListDataModel$p(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;)Lcom/sec/android/app/sbrowser/widget/WidgetListDataModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mWidgetListDataModel:Lcom/sec/android/app/sbrowser/widget/WidgetListDataModel;

    return-object p0
.end method

.method public static final synthetic access$isDarkFontRequired(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->isDarkFontRequired()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setLayoutMargin(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->setLayoutMargin()V

    return-void
.end method

.method public static final synthetic access$setMAdapter$p(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mAdapter:Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter;

    return-void
.end method

.method public static final synthetic access$setMAlphaValue$p(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mAlphaValue:I

    return-void
.end method

.method public static final synthetic access$setMIsNeedRefresh$p(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mIsNeedRefresh:Z

    return-void
.end method

.method public static final synthetic access$setPreviewImage(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->setPreviewImage()V

    return-void
.end method

.method public static final synthetic access$setPreviewImageColors(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->setPreviewImageColors()V

    return-void
.end method

.method public static final synthetic access$setPreviewTitle(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->setPreviewTitle()V

    return-void
.end method

.method private final applyBlurBackground(I)V
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const-string v2, "mListPreviewBlurBg"

    if-nez p1, :cond_1

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mListPreviewBlurBg:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    :cond_0
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f071794

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->isMediumWidget()Z

    move-result v7

    if-eqz v7, :cond_6

    iget v7, v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mBackgroundShape:I

    const/4 v8, 0x1

    const v9, 0x7f071795

    const/high16 v10, -0x40800000    # -1.0f

    if-ne v7, v8, :cond_2

    invoke-virtual/range {p0 .. p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    :goto_0
    move v13, v3

    move v15, v4

    move v14, v5

    move/from16 v16, v6

    goto :goto_1

    :cond_2
    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    invoke-virtual/range {p0 .. p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    goto :goto_0

    :cond_3
    const/4 v8, 0x3

    if-ne v7, v8, :cond_4

    invoke-virtual/range {p0 .. p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    goto :goto_0

    :cond_4
    const/4 v8, 0x4

    if-ne v7, v8, :cond_5

    invoke-virtual/range {p0 .. p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    goto :goto_0

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->getRoundedCornerRadius()F

    move-result v10

    goto :goto_0

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->getRoundedCornerRadius()F

    move-result v10

    goto :goto_0

    :goto_1
    iget-object v11, v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mListPreviewBlurBg:Landroid/view/View;

    if-eqz v11, :cond_7

    float-to-int v12, v10

    const/16 v17, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->shouldShowDarkWidgetPreview()Z

    move-result v18

    invoke-static/range {v11 .. v18}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBlurUiMediumUltraThin(Landroid/view/View;IFFFFIZ)Z

    return-void

    :cond_7
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method

.method private final checkIntent()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "appWidgetId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mAppWidgetId:I

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mAppWidgetId:I

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->INSTANCE:Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->calculateWidth(Landroid/os/Bundle;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mCol:I

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->calculateHeight(Landroid/os/Bundle;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mRow:I

    const-string v1, "appWidgetMinWidth"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mWidth:I

    const-string v1, "appWidgetMinHeight"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mHeight:I

    return-void
.end method

.method private final doUpdateAppWidget()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "appWidgetId"

    iget v2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mAppWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    sget-object v0, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider;->Companion:Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getApplicationContext(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mAppWidgetId:I

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/sbrowser/widget/BookmarkAppWidgetProvider$Companion;->updateWidget(Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mClickListener$lambda$4(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;Landroid/view/View;)V

    return-void
.end method

.method private final getBGColorDescription(I)Ljava/lang/String;
    .locals 0

    const p0, 0x7f0b0965

    if-eq p1, p0, :cond_1

    const p0, 0x7f0b0969

    if-eq p1, p0, :cond_0

    const-string p0, "Light"

    goto :goto_0

    :cond_0
    const-string p0, "MatchSetting"

    goto :goto_0

    :cond_1
    const-string p0, "Dark"

    :goto_0
    return-object p0
.end method

.method private final getCurrentTransparentText(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f1401d8

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getString(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->shouldShowNewWidget()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    rsub-int/lit8 p1, p1, 0x64

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getRoundedCornerRadius()F
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->isExtraLargeLongWidget()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f071732

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->isMediumWidget()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f071734

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f071733

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    :goto_0
    return p0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;Landroid/widget/LinearLayout;Ljava/util/List;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->inflateElements$lambda$9(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;Landroid/widget/LinearLayout;Ljava/util/List;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic i(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->showSettingsDiscardDialog$lambda$5(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private final inflateElements(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 13

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mContext:Landroid/content/Context;

    const-string v1, "mContext"

    const/4 v2, 0x0

    if-eqz v0, :cond_44

    const-string v3, "widget_settings"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "getSharedPreferences(...)"

    invoke-static {v0, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v3, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mAppWidgetId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, " ////// "

    const-string v5, "/"

    const/4 v6, 0x1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->KEY_COLOR_MODE:Ljava/lang/String;

    invoke-virtual {p2, v0, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mColorMode:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->KEY_BACKGROUND_ALPHA_VALUE:Ljava/lang/String;

    invoke-virtual {p2, v0, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mAlphaValue:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->KEY_MATCH_DARK_MODE:Ljava/lang/String;

    invoke-virtual {p2, v0, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mMatchDarkMode:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->KEY_WIDGET_BACKGROUND_SHAPE:Ljava/lang/String;

    invoke-virtual {p2, v0, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mBackgroundShape:I

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mAppWidgetId:I

    iget v7, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mColorMode:I

    iget v8, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mAlphaValue:I

    iget-boolean v9, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mMatchDarkMode:Z

    const-string v10, "inflateElements savedInstanceState:: "

    invoke-static {v0, v7, v10, v3, v5}, Lcom/sec/android/app/sbrowser/autofill/password/k;->l(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_0
    if-eqz v0, :cond_5

    const-string p2, "_"

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    const-string v7, "compile(...)"

    invoke-static {p2, v7}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, LKc/k;->G(I)V

    invoke-virtual {p2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    goto :goto_0

    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    move v8, v4

    :cond_2
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->start()I

    move-result v9

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {v0, v8, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object p2, v7

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    add-int/2addr v0, v6

    invoke-static {p2, v0}, Lfb/n;->b0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p2

    goto :goto_2

    :cond_4
    sget-object p2, Lfb/v;->a:Lfb/v;

    :goto_2
    check-cast p2, Ljava/util/Collection;

    new-array v0, v4, [Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    :try_start_0
    sget-object v0, Lcom/sec/android/app/sbrowser/widget/WidgetConstants$WidgetConfig;->COLOR_MODE:Lcom/sec/android/app/sbrowser/widget/WidgetConstants$WidgetConfig;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget-object v0, p2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mColorMode:I

    sget-object v0, Lcom/sec/android/app/sbrowser/widget/WidgetConstants$WidgetConfig;->ALPHA_VALUE:Lcom/sec/android/app/sbrowser/widget/WidgetConstants$WidgetConfig;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget-object p2, p2, v0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mAlphaValue:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->TAG:Ljava/lang/String;

    iget v7, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mAppWidgetId:I

    iget v8, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mColorMode:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "inflateElements get:: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->TAG:Ljava/lang/String;

    const-string v0, "WidgetConfig parsing error"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->initializePreferencesValues()V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mAppWidgetId:I

    iget v7, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mColorMode:I

    iget v8, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mAlphaValue:I

    iget-boolean v9, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mMatchDarkMode:Z

    const-string v10, "inflateElements get:: else"

    invoke-static {v0, v7, v10, v3, v5}, Lcom/sec/android/app/sbrowser/autofill/password/k;->l(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget p2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mAlphaValue:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mInitialAlphaValue:I

    iget p2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mColorMode:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mInitialColorMode:I

    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mMatchDarkMode:Z

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mInitialMatchDarkModeValue:Z

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_43

    const v0, 0x7f060e08

    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {p2, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setStatusBarColor(Landroid/content/Context;I)V

    const p2, 0x7f0b0e67

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mPreviewImageView:Landroid/widget/ImageView;

    invoke-static {}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->shouldShowNewWidget()Z

    move-result p2

    const/16 v0, 0x8

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mPreviewImageView:Landroid/widget/ImageView;

    if-eqz p2, :cond_6

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    :cond_6
    const-string p0, "mPreviewImageView"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_7
    :goto_4
    const p2, 0x7f0b03c7

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/SwitchCompat;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    const p2, 0x7f0b0e65

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mListPreviewImageView:Landroid/widget/ImageView;

    const p2, 0x7f0b0e66

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mListPreviewBlurBg:Landroid/view/View;

    const p2, 0x7f0b0e75

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mSwitchContainer:Landroid/widget/LinearLayout;

    const p2, 0x7f0b0e59

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mWidgetBackGroundColorContainer:Landroid/widget/LinearLayout;

    const p2, 0x7f0b0e64

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mListView:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->setPreviewImage()V

    const p2, 0x7f0b07e3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v3, "findViewById(...)"

    invoke-static {p2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/LinearLayout;

    const v5, 0x7f0b07ea

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mNoItemText:Landroid/widget/TextView;

    const v5, 0x7f0b0a1d

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mTitle:Landroid/widget/TextView;

    new-instance v5, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetModel;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_42

    invoke-direct {v5, v7}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetModel;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/widget/BookmarkWidgetModel;->isBookmarkPresent()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_8
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mWidgetListDataModel:Lcom/sec/android/app/sbrowser/widget/WidgetListDataModel;

    if-eqz p2, :cond_41

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/widget/WidgetListDataModel;->getWidgetData()Ljava/util/List;

    move-result-object p2

    new-instance v5, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_40

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->isDarkFontRequired()Z

    move-result v8

    iget v9, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mAppWidgetId:I

    invoke-direct {v5, v7, p2, v8, v9}, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ZI)V

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mAdapter:Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mListView:Landroid/widget/ListView;

    if-eqz v7, :cond_3f

    invoke-virtual {v7, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->setPreviewTitle()V

    const v5, 0x7f0b014d

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mColorLabel:Landroid/widget/TextView;

    if-eqz v5, :cond_3e

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f1401d7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f14058d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ", "

    invoke-static {v7, v9, v8}, Lt/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v8, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v5, 0x7f0b096d

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioGroup;

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mColorGroup:Landroid/widget/RadioGroup;

    const v5, 0x7f0b096c

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mWhiteRadioButton:Landroid/widget/RadioButton;

    const-string v7, "mWhiteRadioButton"

    if-eqz v5, :cond_3d

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0b0965

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mBlackRadioButton:Landroid/widget/RadioButton;

    const-string v8, "mBlackRadioButton"

    if-eqz v5, :cond_3c

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0b0969

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast v5, Landroid/widget/RadioButton;

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mMatchPhoneSettingRadioButton:Landroid/widget/RadioButton;

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0b0ada

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mSeekbarLayout:Landroid/widget/LinearLayout;

    const v5, 0x7f0b0adc

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mSeekbarText:Landroid/widget/TextView;

    const v5, 0x7f0b0856

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/SeslSeekBar;

    iput-object v5, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mSeekbar:Landroidx/appcompat/widget/SeslSeekBar;

    const-string v9, "mSeekbar"

    if-eqz v5, :cond_3b

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mSeekBarChangeListener:Lt/X0;

    invoke-virtual {v5, v10}, Landroidx/appcompat/widget/SeslSeekBar;->setOnSeekBarChangeListener(Lt/X0;)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mWidgetBackGroundColorContainer:Landroid/widget/LinearLayout;

    const-string v10, "mWidgetBackGroundColorContainer"

    if-eqz v5, :cond_3a

    iget-boolean v11, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mBackgroundMode:Z

    invoke-virtual {v5, v11}, Landroid/view/View;->setEnabled(Z)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mMatchPhoneSettingRadioButton:Landroid/widget/RadioButton;

    const-string v11, "mMatchPhoneSettingRadioButton"

    if-eqz v5, :cond_39

    iget-boolean v12, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mBackgroundMode:Z

    invoke-virtual {v5, v12}, Landroid/view/View;->setEnabled(Z)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mWhiteRadioButton:Landroid/widget/RadioButton;

    if-eqz v5, :cond_38

    iget-boolean v12, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mBackgroundMode:Z

    invoke-virtual {v5, v12}, Landroid/view/View;->setEnabled(Z)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mBlackRadioButton:Landroid/widget/RadioButton;

    if-eqz v5, :cond_37

    iget-boolean v12, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mBackgroundMode:Z

    invoke-virtual {v5, v12}, Landroid/view/View;->setEnabled(Z)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mSeekbar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz v5, :cond_36

    iget-boolean v12, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mBackgroundMode:Z

    invoke-virtual {v5, v12}, Landroid/view/View;->setEnabled(Z)V

    sget-object v5, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->INSTANCE:Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mContext:Landroid/content/Context;

    if-eqz v12, :cond_35

    invoke-virtual {v5, v12}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->isWhiteWallPaper(Landroid/content/Context;)Z

    move-result v1

    :try_start_1
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mSeekbar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz v5, :cond_a

    if-eqz v1, :cond_9

    const v1, 0x7f060e0e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    goto :goto_6

    :cond_9
    const v1, 0x7f060e0f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    :goto_6
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_7

    :cond_a
    invoke-static {v9}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->TAG:Ljava/lang/String;

    const-string v5, "Unable to set progress tint."

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    invoke-static {}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->shouldShowNewWidget()Z

    move-result v1

    if-eqz v1, :cond_10

    iget v1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mColorMode:I

    if-eqz v1, :cond_e

    if-eq v1, v6, :cond_c

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mMatchPhoneSettingRadioButton:Landroid/widget/RadioButton;

    if-eqz v1, :cond_b

    invoke-virtual {v1, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_8

    :cond_b
    invoke-static {v11}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_c
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mWhiteRadioButton:Landroid/widget/RadioButton;

    if-eqz v1, :cond_d

    invoke-virtual {v1, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_8

    :cond_d
    invoke-static {v7}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_e
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mWhiteRadioButton:Landroid/widget/RadioButton;

    if-eqz v1, :cond_f

    invoke-virtual {v1, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_8

    :cond_f
    invoke-static {v7}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_10
    iget v1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mColorMode:I

    if-ne v1, v6, :cond_12

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mWhiteRadioButton:Landroid/widget/RadioButton;

    if-eqz v1, :cond_11

    invoke-virtual {v1, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_8

    :cond_11
    invoke-static {v7}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_12
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mWhiteRadioButton:Landroid/widget/RadioButton;

    if-eqz v1, :cond_34

    invoke-virtual {v1, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_8
    invoke-static {}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->shouldShowNewWidget()Z

    move-result v1

    if-eqz v1, :cond_13

    const v1, 0x7f0b0e77

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mWidgetTransparencyContainer:Landroid/widget/LinearLayout;

    :cond_13
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->updateSeekBarProgress()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSystemSupportNightTheme()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSystemNightTheme(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mWidgetBackGroundColorContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {p0, v1, v5}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBackgroundDrawable(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mSwitchContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {p0, v1, v5}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBackgroundDrawable(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_9

    :cond_14
    const-string p0, "mSwitchContainer"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_15
    invoke-static {v10}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_16
    :goto_9
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSystemSupportNightTheme()Z

    move-result v1

    const-string v5, "mSwitch"

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v1, :cond_18

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v1, :cond_17

    iget-boolean v10, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mMatchDarkMode:Z

    invoke-virtual {v1, v10}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    goto :goto_a

    :cond_17
    invoke-static {v5}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_18
    invoke-static {v5}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_19
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v1, :cond_33

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_a
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v1, :cond_32

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->shouldShowNewWidget()Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mView:Landroid/view/View;

    const-string v10, "mView"

    if-eqz v1, :cond_21

    const v11, 0x7f0b0193

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->isMediumWidget()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->initBackgroundShapeView()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mView:Landroid/view/View;

    if-eqz v3, :cond_1a

    const v10, 0x7f0b0151

    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/HorizontalScrollView;

    if-eqz v3, :cond_1c

    invoke-virtual {v3, v4}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    goto :goto_b

    :cond_1a
    invoke-static {v10}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_1b
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1c
    :goto_b
    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mBackgroundMode:Z

    const v10, 0x3ecccccd    # 0.4f

    const/high16 v11, 0x3f800000    # 1.0f

    if-eqz v3, :cond_1d

    move v3, v11

    goto :goto_c

    :cond_1d
    move v3, v10

    :goto_c
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mWidgetTransparencyContainer:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_20

    iget-boolean v12, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mBackgroundMode:Z

    if-eqz v12, :cond_1e

    move v10, v11

    :cond_1e
    invoke-virtual {v3, v10}, Landroid/view/View;->setAlpha(F)V

    const v3, 0x7f0b0152

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mBackgroundSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mBackgroundMode:Z

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mInitialBackgroundMode:Z

    iget v10, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mBackgroundShape:I

    iput v10, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mInitialBackgroundShape:I

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mBackgroundSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz p1, :cond_1f

    new-instance v3, Lcom/sec/android/app/sbrowser/settings/m;

    const/4 v10, 0x3

    invoke-direct {v3, p0, v1, p2, v10}, Lcom/sec/android/app/sbrowser/settings/m;-><init>(Ljava/lang/Object;Landroid/view/View;Ljava/lang/Object;I)V

    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_d

    :cond_1f
    const-string p0, "mBackgroundSwitch"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_20
    const-string p0, "mWidgetTransparencyContainer"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_21
    invoke-static {v10}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_22
    :goto_d
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz p1, :cond_31

    iget p2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mAlphaValue:I

    const/16 v1, 0x64

    if-ge p2, v1, :cond_23

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSystemSupportNightTheme()Z

    move-result p2

    if-eqz p2, :cond_23

    move p2, v6

    goto :goto_e

    :cond_23
    move p2, v4

    :goto_e
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->shouldShowNewWidget()Z

    move-result p1

    if-nez p1, :cond_29

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mIsNightModeEnabled:Z

    if-eqz p1, :cond_26

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mMatchDarkMode:Z

    if-eqz p1, :cond_26

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mWhiteRadioButton:Landroid/widget/RadioButton;

    if-eqz p1, :cond_25

    invoke-virtual {p1, v4}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mBlackRadioButton:Landroid/widget/RadioButton;

    if-eqz p1, :cond_24

    invoke-virtual {p1, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_f

    :cond_24
    invoke-static {v8}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_25
    invoke-static {v7}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_26
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mWhiteRadioButton:Landroid/widget/RadioButton;

    if-eqz p1, :cond_28

    invoke-virtual {p1, v6}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mBlackRadioButton:Landroid/widget/RadioButton;

    if-eqz p1, :cond_27

    invoke-virtual {p1, v6}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_f

    :cond_27
    invoke-static {v8}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_28
    invoke-static {v7}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_29
    :goto_f
    invoke-static {}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->shouldShowNewWidget()Z

    move-result p1

    const-string p2, "mSeekbarText"

    if-eqz p1, :cond_2d

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mSeekbarText:Landroid/widget/TextView;

    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->getCurrentTransparentText(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mSeekbarText:Landroid/widget/TextView;

    if-eqz p1, :cond_2b

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mSeekbar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz p1, :cond_2a

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f0c00cf

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lt/J0;->setMax(I)V

    goto :goto_10

    :cond_2a
    invoke-static {v9}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_2b
    invoke-static {p2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_2c
    invoke-static {p2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_2d
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mSeekbar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz p1, :cond_30

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lt/J0;->setMax(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mSeekbarText:Landroid/widget/TextView;

    if-eqz p1, :cond_2f

    iget v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mAlphaValue:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->getCurrentTransparentText(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mSeekbarText:Landroid/widget/TextView;

    if-eqz p1, :cond_2e

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->getCurrentTransparentText(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    float-to-double v0, p0

    neg-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMinWidth(I)V

    :goto_10
    return-void

    :cond_2e
    invoke-static {p2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_2f
    invoke-static {p2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_30
    invoke-static {v9}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_31
    invoke-static {v5}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_32
    invoke-static {v5}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_33
    invoke-static {v5}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_34
    invoke-static {v7}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_35
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_36
    invoke-static {v9}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_37
    invoke-static {v8}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_38
    invoke-static {v7}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_39
    invoke-static {v11}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_3a
    invoke-static {v10}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_3b
    invoke-static {v9}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_3c
    invoke-static {v8}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_3d
    invoke-static {v7}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_3e
    const-string p0, "mColorLabel"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_3f
    const-string p0, "mListView"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_40
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_41
    const-string p0, "mWidgetListDataModel"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_42
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_43
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_44
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2
.end method

.method private static final inflateElements$lambda$9(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;Landroid/widget/LinearLayout;Ljava/util/List;Landroid/widget/CompoundButton;Z)V
    .locals 4

    const-string v0, "<unused var>"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean p4, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mBackgroundMode:Z

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mWidgetBackGroundColorContainer:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    if-eqz p3, :cond_c

    invoke-virtual {p3, p4}, Landroid/view/View;->setEnabled(Z)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mMatchPhoneSettingRadioButton:Landroid/widget/RadioButton;

    if-eqz p3, :cond_b

    invoke-virtual {p3, p4}, Landroid/view/View;->setEnabled(Z)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mWhiteRadioButton:Landroid/widget/RadioButton;

    if-eqz p3, :cond_a

    invoke-virtual {p3, p4}, Landroid/view/View;->setEnabled(Z)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mBlackRadioButton:Landroid/widget/RadioButton;

    if-eqz p3, :cond_9

    invoke-virtual {p3, p4}, Landroid/view/View;->setEnabled(Z)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mSeekbar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz p3, :cond_8

    invoke-virtual {p3, p4}, Landroid/view/View;->setEnabled(Z)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mWidgetTransparencyContainer:Landroid/widget/LinearLayout;

    if-eqz p3, :cond_7

    const v1, 0x3ecccccd    # 0.4f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p4, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {p3, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, p4}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p4, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->backgroundShapeArrayId:[I

    array-length p3, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p3, :cond_3

    aget v2, p1, v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mView:Landroid/view/View;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "findViewById(...)"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2, p4}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const-string p0, "mView"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->setPreviewImage()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->setPreviewImageColors()V

    new-instance p1, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter;

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mContext:Landroid/content/Context;

    if-eqz p3, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->isDarkFontRequired()Z

    move-result v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mAppWidgetId:I

    invoke-direct {p1, p3, p2, v1, v2}, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ZI)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mAdapter:Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mListView:Landroid/widget/ListView;

    if-eqz p2, :cond_5

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    if-eqz p4, :cond_4

    const-string p1, "On"

    goto :goto_2

    :cond_4
    const-string p1, "Off"

    :goto_2
    const-string p2, "7080"

    invoke-direct {p0, p2, p2, p1}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->sendSALogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    const-string p0, "mListView"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :cond_6
    const-string p0, "mContext"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :cond_7
    const-string p0, "mWidgetTransparencyContainer"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :cond_8
    const-string p0, "mSeekbar"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :cond_9
    const-string p0, "mBlackRadioButton"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string p0, "mWhiteRadioButton"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :cond_b
    const-string p0, "mMatchPhoneSettingRadioButton"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :cond_c
    const-string p0, "mWidgetBackGroundColorContainer"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0
.end method

.method private final initBackgroundShapeView()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->backgroundShapeArrayId:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mView:Landroid/view/View;

    if-eqz v4, :cond_0

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "findViewById(...)"

    invoke-static {v3, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Lcom/sec/android/app/sbrowser/widget/e;

    invoke-direct {v4, v3, p0}, Lcom/sec/android/app/sbrowser/widget/e;-><init>(Landroid/widget/FrameLayout;Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "mView"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->updateBackgroundShapeView()V

    return-void
.end method

.method private static final initBackgroundShapeView$lambda$10(Landroid/widget/FrameLayout;Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/16 p3, 0x9

    if-eq p2, p3, :cond_1

    const/16 p0, 0xa

    if-eq p2, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->updateBackgroundShapeView()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 p2, 0x0

    const p3, 0x7f060e01

    invoke-virtual {p1, p3, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private final initializePreferencesValues()V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mAppWidgetId:I

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingPreferenceManager;->getTransparency(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mAlphaValue:I

    iget v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mAppWidgetId:I

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingPreferenceManager;->getColorMode(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mColorMode:I

    iget v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mAppWidgetId:I

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingPreferenceManager;->getDarkMode(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mMatchDarkMode:Z

    iget v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mAppWidgetId:I

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingPreferenceManager;->getBackground(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mBackgroundMode:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mAppWidgetId:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getWidgetBackgroundShape(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mBackgroundShape:I

    return-void
.end method

.method private final isDarkFontRequired()Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mColorMode:I

    iget v2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mAlphaValue:I

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mMatchDarkMode:Z

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mBackgroundMode:Z

    invoke-static {v0, v1, v2, v3, p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->isDarkFontRequired(Landroid/content/Context;IIZZ)Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "mContext"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final isExtraLargeLongWidget()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mRow:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mCol:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final isLandscapeLayout()Z
    .locals 2

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const-string v0, "findViewById(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {p0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/ViewGroup;

    const v1, 0x7f0b0a17

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "landscape"

    invoke-static {p0, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final isMediumWidget()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mRow:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mCol:I

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final isSettingsUnChanged()Z
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mInitialMatchDarkModeValue:Z

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mMatchDarkMode:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mInitialColorMode:I

    iget v1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mColorMode:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mInitialAlphaValue:I

    iget v1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mAlphaValue:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mInitialBackgroundMode:Z

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mBackgroundMode:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mInitialBackgroundShape:I

    iget p0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mBackgroundShape:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->setActionBar$lambda$0(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->showSettingsDiscardDialog$lambda$7(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic l(Landroid/widget/FrameLayout;Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->initBackgroundShapeView$lambda$10(Landroid/widget/FrameLayout;Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic m(ILandroid/view/View;)Z
    .locals 0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mClickListener$lambda$4$lambda$3(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method private static final mClickListener$lambda$4(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0965

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const v1, 0x7f0b0969

    if-eq v0, v1, :cond_0

    const v1, 0x7f0b096c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->setBackgroundColor()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->getBGColorDescription(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "7055"

    invoke-direct {p0, v1, v1, v0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->sendSALogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->setPreviewImage()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->setPreviewImageColors()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mWidgetListDataModel:Lcom/sec/android/app/sbrowser/widget/WidgetListDataModel;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/widget/WidgetListDataModel;->getWidgetData()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_6

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->isDarkFontRequired()Z

    move-result v4

    iget v5, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mAppWidgetId:I

    invoke-direct {v1, v3, v0, v4, v5}, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ZI)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mAdapter:Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->backgroundShapeArrayId:[I

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/widget/d;

    invoke-direct {v1, p1}, Lcom/sec/android/app/sbrowser/widget/d;-><init>(Landroid/view/View;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mBackgroundSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->backgroundShapeArrayId:[I

    array-length v0, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->backgroundShapeArrayId:[I

    aget v3, v3, v1

    if-ne v2, v3, :cond_1

    iput v1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mBackgroundShape:I

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->updateBackgroundShapeView()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->setPreviewImage()V

    goto :goto_3

    :cond_3
    const-string p0, "mBackgroundSwitch"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_4
    :goto_3
    return-void

    :cond_5
    const-string p0, "mListView"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_6
    const-string p0, "mContext"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_7
    const-string p0, "mWidgetListDataModel"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2
.end method

.method private static final mClickListener$lambda$4$lambda$3(Landroid/view/View;I)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic n(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->showSettingsDiscardDialog$lambda$6(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private final restoringPreference()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isBackUpAndRestoreDone()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->initializePreferencesValues()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setBackUpAndRestoreDone(Z)V

    return-void
.end method

.method private final sendSALogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "det"

    invoke-interface {p0, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "801"

    invoke-static {v0, p1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {p2, p3}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final setActionBar(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f0b0d77

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lm/n;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Lm/n;->getSupportActionBar()Lm/b;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lm/b;->r(Z)V

    const v2, 0x7f141111

    invoke-virtual {v0, v2}, Lm/b;->w(I)V

    invoke-virtual {v0, v1}, Lm/b;->n(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->isLandscapeLayout()Z

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x7f0b0e6c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActionMenuView;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mBottomNavigationView:Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {p0}, Lm/n;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mBottomNavigationView:Landroidx/appcompat/widget/ActionMenuView;

    const/4 v1, 0x0

    const-string v2, "mBottomNavigationView"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v3, 0x7f100032

    invoke-virtual {p1, v3, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mBottomNavigationView:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/search_widget/a;

    const/16 v1, 0xe

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/search_widget/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionMenuView;->setOnMenuItemClickListener(Lt/p;)V

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    return-void
.end method

.method private static final setActionBar$lambda$0(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "menuItem"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0b0053

    if-eq v0, v1, :cond_0

    const v1, 0x7f0b005a

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private final setBackgroundColor()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mColorGroup:Landroid/widget/RadioGroup;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->shouldShowNewWidget()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const v4, 0x7f0b0965

    if-eqz v1, :cond_1

    if-eq v0, v4, :cond_2

    const v1, 0x7f0b096c

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    if-ne v0, v4, :cond_0

    :cond_2
    :goto_0
    iput v2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mColorMode:I

    return-void

    :cond_3
    const-string p0, "mColorGroup"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final setBottomGroupColor()V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->shouldShowNewWidget()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mIsNightModeEnabled:Z

    const-string v1, "mBlackRadioButton"

    const-string v2, "mWhiteRadioButton"

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mMatchDarkMode:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mWhiteRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mBlackRadioButton:Landroid/widget/RadioButton;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v3

    :cond_2
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v3

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mWhiteRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mBlackRadioButton:Landroid/widget/RadioButton;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v2}, Landroid/view/View;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_4
    invoke-static {v1}, Ltb/k;->l(Ljava/lang/String;)V

    throw v3

    :cond_5
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v3
.end method

.method private final setColorForWidgetTitle(I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mContext:Landroid/content/Context;

    const-string v3, "mContext"

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mNoItemText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_0
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p0, "mNoItemText"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v3}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string p0, "mTitle"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method

.method private final setColorsAsWallpaper()V
    .locals 5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->updateSeekBarProgress()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mSeekbarText:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget v2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mAlphaValue:I

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->getCurrentTransparentText(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->setBottomGroupColor()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->shouldShowNewWidget()Z

    move-result v0

    const v2, 0x7f0b0965

    const v3, 0x7f0b096c

    const-string v4, "mColorGroup"

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mColorGroup:Landroid/widget/RadioGroup;

    if-eqz v0, :cond_2

    iget p0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mColorMode:I

    if-nez p0, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const v2, 0x7f0b0969

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_1

    :cond_2
    invoke-static {v4}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mColorGroup:Landroid/widget/RadioGroup;

    if-eqz v0, :cond_5

    iget p0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mColorMode:I

    if-nez p0, :cond_4

    move v2, v3

    :cond_4
    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    :goto_1
    return-void

    :cond_5
    invoke-static {v4}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_6
    const-string p0, "mSeekbarText"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method

.method private final setLayoutMargin()V
    .locals 17

    move-object/from16 v0, p0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const-string v4, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v1, v4}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mColorLabel:Landroid/widget/TextView;

    const-string v5, "mColorLabel"

    const/4 v6, 0x0

    if-eqz v4, :cond_1d

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const-string v7, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-static {v4, v7}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v8, v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mSeekbarLayout:Landroid/widget/LinearLayout;

    const-string v9, "mSeekbarLayout"

    if-eqz v8, :cond_1c

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-static {v8, v7}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->updateLayoutMargin(Landroid/content/Context;)I

    move-result v10

    sget-object v11, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->INSTANCE:Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;

    invoke-virtual {v11, v0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->isWidgetTabletLayoutRequired(Landroid/content/Context;)Z

    move-result v12

    const-string v13, "mContext"

    if-eqz v12, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->isLandscapeLayout()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->shouldShowNewWidget()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07176a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    goto/16 :goto_0

    :cond_0
    invoke-static {v13}, Ltb/k;->l(Ljava/lang/String;)V

    throw v6

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3dbd70a4    # 0.0925f

    mul-float/2addr v4, v5

    float-to-int v10, v4

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->shouldShowNewWidget()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->needMargin(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_9

    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getPhoneMargins(Landroid/content/Context;)I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v14, 0x7f07176c

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f071782

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v3, 0x7f071791

    invoke-virtual {v15, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    invoke-virtual/range {p0 .. p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v15, 0x7f07178f

    invoke-virtual {v3, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v4, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v4, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v8, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v8, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mColorLabel:Landroid/widget/TextView;

    if-eqz v14, :cond_8

    invoke-virtual {v14, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mSeekbarLayout:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_7

    invoke-virtual {v4, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mSwitchContainer:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v12, v5, v12, v8}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mBlackRadioButton:Landroid/widget/RadioButton;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getPaddingEnd()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v4, v3, v5, v8, v9}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mWhiteRadioButton:Landroid/widget/RadioButton;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getPaddingEnd()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v4, v3, v5, v8, v9}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mMatchPhoneSettingRadioButton:Landroid/widget/RadioButton;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getPaddingEnd()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v4, v3, v5, v8, v9}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_0

    :cond_3
    const-string v0, "mMatchPhoneSettingRadioButton"

    invoke-static {v0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v6

    :cond_4
    const-string v0, "mWhiteRadioButton"

    invoke-static {v0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v6

    :cond_5
    const-string v0, "mBlackRadioButton"

    invoke-static {v0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v6

    :cond_6
    const-string v0, "mSwitchContainer"

    invoke-static {v0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v6

    :cond_7
    invoke-static {v9}, Ltb/k;->l(Ljava/lang/String;)V

    throw v6

    :cond_8
    invoke-static {v5}, Ltb/k;->l(Ljava/lang/String;)V

    throw v6

    :cond_9
    :goto_0
    const v3, 0x7f0b0e71

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b0e70

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0b0e6e

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v3, :cond_1b

    if-eqz v4, :cond_1b

    if-nez v5, :cond_a

    goto/16 :goto_7

    :cond_a
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    const-string v9, "getLayoutParams(...)"

    invoke-static {v8, v9}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    invoke-static {v12, v9}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    invoke-static {v14, v9}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput v10, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->shouldShowNewWidget()Z

    move-result v15

    if-eqz v15, :cond_19

    const v15, 0x7f0b0192

    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    if-eqz v15, :cond_b

    const/4 v6, 0x0

    invoke-virtual {v15, v10, v6, v10, v6}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_b
    const v6, 0x7f0b0e73

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    move-object/from16 v16, v5

    goto :goto_1

    :cond_c
    move-object/from16 v16, v5

    const/4 v15, 0x0

    :goto_1
    const-string v5, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v15, v5}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v15, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, 0x0

    invoke-virtual {v15, v10, v5, v10, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    if-eqz v6, :cond_d

    invoke-virtual {v6, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_d
    const v6, 0x7f0b0e6a

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->isLandscapeLayout()Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_2

    :cond_e
    move v5, v10

    :goto_2
    iput v5, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v2, v9}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->isLandscapeLayout()Z

    move-result v5

    if-nez v5, :cond_14

    invoke-virtual {v11, v0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->isWidgetTabletLayoutRequired(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->isExtraLargeLongWidget()Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_f
    const/4 v1, 0x0

    goto :goto_3

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->isLargeWidget()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->isMediumWidget()Z

    move-result v1

    if-eqz v1, :cond_1a

    :cond_11
    iget-object v0, v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07176d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_6

    :cond_12
    invoke-static {v13}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    :goto_3
    iget-object v0, v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071770

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    :cond_13
    invoke-static {v13}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_14
    invoke-virtual {v11, v0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->isWidgetTabletLayoutRequired(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_18

    const v0, 0x7f0b0e6b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0b0e74

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    goto :goto_4

    :cond_15
    const/4 v2, 0x0

    :goto_4
    invoke-static {v2, v7}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    goto :goto_5

    :cond_16
    const/4 v6, 0x0

    :goto_5
    invoke-static {v6, v7}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    const v5, 0x3ec28f5c    # 0.38f

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const v5, 0x3f1eb852    # 0.62f

    iput v5, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    if-eqz v0, :cond_17

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_17
    if-eqz v1, :cond_1a

    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071763

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_6

    :cond_19
    move-object/from16 v16, v5

    iput v10, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_1a
    :goto_6
    invoke-virtual {v3, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1b
    :goto_7
    return-void

    :cond_1c
    invoke-static {v9}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1d
    move-object v0, v6

    invoke-static {v5}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0
.end method

.method private final setListDivider(Z)V
    .locals 12

    if-eqz p1, :cond_0

    const p1, 0x7f060175

    goto :goto_0

    :cond_0
    const p1, 0x7f060174

    :goto_0
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mContext:Landroid/content/Context;

    const-string v4, "mContext"

    const/4 v5, 0x0

    if-eqz v3, :cond_7

    invoke-virtual {v3, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    filled-new-array {v0}, [Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f071772

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f071771

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v10, v3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    if-ne v3, v2, :cond_1

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    move-object v6, p1

    move v8, v10

    move v10, v0

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    move-object v6, p1

    move v8, v0

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mListView:Landroid/widget/ListView;

    const-string v2, "mListView"

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mListView:Landroid/widget/ListView;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f07022f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mListView:Landroid/widget/ListView;

    if-eqz p1, :cond_3

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mListView:Landroid/widget/ListView;

    if-eqz p0, :cond_2

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_2
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v5

    :cond_3
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v5

    :cond_4
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v5

    :cond_5
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v5

    :cond_6
    invoke-static {v4}, Ltb/k;->l(Ljava/lang/String;)V

    throw v5

    :cond_7
    invoke-static {v4}, Ltb/k;->l(Ljava/lang/String;)V

    throw v5
.end method

.method private final setMatchPhoneorTabletSettingText()V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "mMatchPhoneSettingRadioButton"

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFoldableDeviceTypeFold()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mMatchPhoneSettingRadioButton:Landroid/widget/RadioButton;

    if-eqz p0, :cond_0

    const v0, 0x7f1406da

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mMatchPhoneSettingRadioButton:Landroid/widget/RadioButton;

    if-eqz p0, :cond_2

    const v0, 0x7f1406d9

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_2
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method

.method private final setMenuOptionsVisibility()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->isLandscapeLayout()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mTopCancelMenu:Landroid/view/MenuItem;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mTopDoneMenu:Landroid/view/MenuItem;

    if-eqz p0, :cond_0

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    :cond_0
    const-string p0, "mTopDoneMenu"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string p0, "mTopCancelMenu"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v2
.end method

.method private final setPreviewBackground()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->isMediumWidget()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mBackgroundShape:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f0807ec

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const v0, 0x7f0807e9

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const v0, 0x7f0807ea

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    const v0, 0x7f0807ed

    goto :goto_0

    :cond_3
    const v0, 0x7f0807eb

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mListPreviewImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v0, "0~"

    const-string v1, "7081"

    invoke-direct {p0, v1, v1, v0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->sendSALogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    const-string p0, "mListPreviewImageView"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final setPreviewImage()V
    .locals 11

    invoke-static {}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->shouldShowNewWidget()Z

    move-result v0

    const/16 v1, 0xff

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "mContext"

    const/4 v5, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->TAG:Ljava/lang/String;

    iget v6, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mAlphaValue:I

    const-string v7, "AlphaValue "

    invoke-static {v6, v7, v0}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mBackgroundMode:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mAlphaValue:I

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_2

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->isLowMemoryOneUI7Device(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->INSTANCE:Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;

    invoke-virtual {v6, v0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->getLowMemoryDeviceWidgetTransparency(I)I

    move-result v0

    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_1

    iget v7, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mAppWidgetId:I

    iget v8, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mColorMode:I

    invoke-static {v6, v0, v7, v3, v8}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->getCalculatedAlphaValue(Landroid/content/Context;IIZI)F

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {v4}, Ltb/k;->l(Ljava/lang/String;)V

    throw v5

    :cond_2
    invoke-static {v4}, Ltb/k;->l(Ljava/lang/String;)V

    throw v5

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mAlphaValue:I

    rsub-int/lit8 v0, v0, 0x64

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    int-to-float v0, v0

    :goto_0
    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->shouldShowNewWidget()Z

    move-result v6

    const v7, 0x7f0807f1

    const v8, 0x7f0807f2

    const-string v9, "mPreviewImageView"

    const-string v10, "mListPreviewImageView"

    if-eqz v6, :cond_11

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_10

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->isLowMemoryOneUI7Device(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mListPreviewBlurBg:Landroid/view/View;

    if-eqz v2, :cond_5

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_5
    const-string p0, "mListPreviewBlurBg"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v5

    :cond_6
    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->applyBlurBackground(I)V

    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->isMediumWidget()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->setPreviewBackground()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->shouldShowDarkWidgetPreview()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mListPreviewImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f06017e

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto/16 :goto_2

    :cond_7
    invoke-static {v10}, Ltb/k;->l(Ljava/lang/String;)V

    throw v5

    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mListPreviewImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f06017f

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto/16 :goto_2

    :cond_9
    invoke-static {v10}, Ltb/k;->l(Ljava/lang/String;)V

    throw v5

    :cond_a
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->shouldShowDarkWidgetPreview()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->isExtraLargeLongWidget()Z

    move-result v2

    if-eqz v2, :cond_b

    const v8, 0x7f0807f3

    :cond_b
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mListPreviewImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_c

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_c
    invoke-static {v10}, Ltb/k;->l(Ljava/lang/String;)V

    throw v5

    :cond_d
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->isExtraLargeLongWidget()Z

    move-result v2

    if-eqz v2, :cond_e

    const v7, 0x7f0807f4

    :cond_e
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mListPreviewImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_f

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_f
    invoke-static {v10}, Ltb/k;->l(Ljava/lang/String;)V

    throw v5

    :cond_10
    invoke-static {v4}, Ltb/k;->l(Ljava/lang/String;)V

    throw v5

    :cond_11
    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mIsNightModeEnabled:Z

    if-eqz v4, :cond_12

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mMatchDarkMode:Z

    if-eqz v4, :cond_12

    cmpg-float v2, v0, v2

    if-nez v2, :cond_13

    :cond_12
    iget v2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mColorMode:I

    if-eqz v2, :cond_16

    :cond_13
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mPreviewImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_15

    const v4, 0x7f0807f7

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mListPreviewImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_14

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_14
    invoke-static {v10}, Ltb/k;->l(Ljava/lang/String;)V

    throw v5

    :cond_15
    invoke-static {v9}, Ltb/k;->l(Ljava/lang/String;)V

    throw v5

    :cond_16
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mPreviewImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_20

    const v4, 0x7f0807f6

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mListPreviewImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_1f

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->shouldShowNewWidget()Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mPreviewImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mListPreviewImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->isDarkFontRequired()Z

    move-result v0

    if-nez v0, :cond_17

    iget v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mColorMode:I

    if-nez v0, :cond_18

    :cond_17
    const/4 v3, 0x1

    :cond_18
    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->setListDivider(Z)V

    goto :goto_3

    :cond_19
    invoke-static {v10}, Ltb/k;->l(Ljava/lang/String;)V

    throw v5

    :cond_1a
    invoke-static {v9}, Ltb/k;->l(Ljava/lang/String;)V

    throw v5

    :cond_1b
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mPreviewImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1e

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mListPreviewImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1d

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    :goto_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz p0, :cond_1c

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSystemSupportNightTheme()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_1c
    const-string p0, "mSwitch"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v5

    :cond_1d
    invoke-static {v10}, Ltb/k;->l(Ljava/lang/String;)V

    throw v5

    :cond_1e
    invoke-static {v9}, Ltb/k;->l(Ljava/lang/String;)V

    throw v5

    :cond_1f
    invoke-static {v10}, Ltb/k;->l(Ljava/lang/String;)V

    throw v5

    :cond_20
    invoke-static {v9}, Ltb/k;->l(Ljava/lang/String;)V

    throw v5
.end method

.method private final setPreviewImageColors()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->shouldShowNewWidget()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->isDarkFontRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f060177

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->setColorForWidgetTitle(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f060179

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->setColorForWidgetTitle(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->isDarkFontRequired()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f060176

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->setColorForWidgetTitle(I)V

    goto :goto_0

    :cond_2
    const v0, 0x7f060178

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->setColorForWidgetTitle(I)V

    :goto_0
    return-void
.end method

.method private final setPreviewTitle()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mWidgetSettingListDataFactory:Lcom/sec/android/app/sbrowser/widget/WidgetSettingListDataFactory;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingListDataFactory;->getBookmarkCount()I

    move-result v0

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f120005

    invoke-virtual {v2, v4, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "getQuantityString(...)"

    invoke-static {v0, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mTitle:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string p0, "mTitle"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p0, "mWidgetSettingListDataFactory"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method

.method private final shouldShowDarkWidgetPreview()Z
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mIsNightModeEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mColorMode:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    :cond_0
    iget p0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mColorMode:I

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private final showSettingsDiscardDialog(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lm/k;

    const v1, 0x7f150324

    invoke-direct {v0, p0, v1}, Lm/k;-><init>(Landroid/content/Context;I)V

    iget-object v1, v0, Lm/k;->a:Lm/h;

    iput-object p1, v1, Lm/h;->f:Ljava/lang/CharSequence;

    new-instance p1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/w;

    const/16 v1, 0x19

    invoke-direct {p1, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/w;-><init>(I)V

    const v1, 0x7f140251

    invoke-virtual {v0, v1, p1}, Lm/k;->c(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/widget/c;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/sec/android/app/sbrowser/widget/c;-><init>(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;I)V

    const v1, 0x7f14005e

    invoke-virtual {v0, v1, p1}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/widget/c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/widget/c;-><init>(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;I)V

    const p0, 0x7f14025c

    invoke-virtual {p1, p0, v0}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p0

    invoke-virtual {p0}, Lm/k;->f()Lm/l;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    return-void
.end method

.method private static final showSettingsDiscardDialog$lambda$5(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static final showSettingsDiscardDialog$lambda$6(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->onCancelPressed()V

    return-void
.end method

.method private static final showSettingsDiscardDialog$lambda$7(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->onDonePressed()V

    return-void
.end method

.method private final updateBackgroundShapeView()V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->backgroundShapeArrayId:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mView:Landroid/view/View;

    const-string v4, "mView"

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->backgroundShapeArrayId:[I

    aget v6, v6, v2

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v6, "findViewById(...)"

    invoke-static {v3, v6}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mView:Landroid/view/View;

    if-eqz v7, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->backgroundShapeCheckId:[I

    aget v4, v4, v2

    invoke-virtual {v7, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v6}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/widget/ImageView;

    iget v6, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mBackgroundShape:I

    if-ne v2, v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    move v6, v1

    :goto_1
    if-eqz v6, :cond_1

    move v7, v1

    goto :goto_2

    :cond_1
    const/16 v7, 0x8

    :goto_2
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v6, :cond_2

    const v4, 0x7f060e02

    goto :goto_3

    :cond_2
    const v4, 0x7f060e00

    :goto_3
    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v4}, Ltb/k;->l(Ljava/lang/String;)V

    throw v5

    :cond_4
    invoke-static {v4}, Ltb/k;->l(Ljava/lang/String;)V

    throw v5

    :cond_5
    return-void
.end method

.method private final updatePreviewIfNeeded(Landroid/view/View;)V
    .locals 8

    const v0, 0x7f0b0189

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/LinearLayout;

    const v2, 0x7f0b0e68

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->shouldShowNewWidget()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->isMediumWidget()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mHeight:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v2, v1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iget v3, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mWidth:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {v2, v3, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    :goto_0
    float-to-int p0, p0

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mRow:I

    const/4 v3, 0x6

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mCol:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mHeight:I

    int-to-double v3, v1

    const-wide v5, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v3, v5

    double-to-float v1, v3

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v2, v1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iget v3, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mWidth:I

    int-to-double v3, v3

    mul-double/2addr v3, v5

    double-to-float v3, v3

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {v2, v3, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mHeight:I

    int-to-double v3, v1

    const-wide v5, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v3, v5

    double-to-float v1, v3

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v2, v1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iget v3, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mWidth:I

    int-to-double v3, v3

    mul-double/2addr v3, v5

    double-to-float v3, v3

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {v2, v3, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput p0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput p0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iput v1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iput v1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_3

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "getLayoutParams(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-static {v3, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->INSTANCE:Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->isMainScreenFoldDevice(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->isLandscapeLayout()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f07177a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v4, 0x7f07177b

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2

    :cond_3
    invoke-virtual {v2, p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->isWidgetTabletLayoutRequired(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->isLandscapeLayout()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f071778

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2

    :cond_4
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/WindowUtils;->getDeviceWidth(Landroid/app/Activity;)I

    move-result p0

    int-to-float v2, p0

    const v4, 0x3dbd70a4    # 0.0925f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr p0, v2

    int-to-double v4, p0

    const-wide v6, 0x3feb851eb851eb85L    # 0.86

    mul-double/2addr v4, v6

    double-to-int p0, v4

    iput p0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p0, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_5
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_3
    return-void
.end method

.method private final updateSeekBarProgress()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mSeekbar:Landroidx/appcompat/widget/SeslSeekBar;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mAlphaValue:I

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->getProgressFromTransparency(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lt/J0;->setProgress(I)V

    return-void

    :cond_0
    const-string p0, "mSeekbar"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final updateSettingPreferenceAppWidget()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->updateSettingValue()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->doUpdateAppWidget()V

    return-void
.end method

.method private final updateSettingValue()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mAlphaValue:I

    iget v2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mAppWidgetId:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setWidgetTransparency(II)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mColorMode:I

    iget v2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mAppWidgetId:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setWidgetColorMode(II)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mMatchDarkMode:Z

    iget v2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mAppWidgetId:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setWidgetDarkMode(ZI)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mBackgroundMode:Z

    iget v2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mAppWidgetId:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setWidgetBackground(ZI)V

    sget-object v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingPreferenceManager;->INSTANCE:Lcom/sec/android/app/sbrowser/widget/WidgetSettingPreferenceManager;

    iget v1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mAppWidgetId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingPreferenceManager;->setBookmarkWidgetID(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mBackgroundShape:I

    iget p0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mAppWidgetId:I

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setWidgetBackgroundShape(II)V

    return-void
.end method


# virtual methods
.method public final isLargeWidget()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mRow:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mCol:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->TAG:Ljava/lang/String;

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->isSettingsUnChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    const v0, 0x7f140001

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->showSettingsDiscardDialog(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onBrowserPreferenceChanged(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pref_night_mode"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSystemSupportNightTheme()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->TAG:Ljava/lang/String;

    const-string v0, "PREF_NIGHT_MODE changed, recreate activity"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    goto :goto_0

    :cond_0
    const-string v0, "pref_high_contrast_mode"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isNightModeEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->TAG:Ljava/lang/String;

    const-string v0, "[NIGHTMODE] PREF_HIGH_CONTRAST_MODE changed, recreate activity"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onCancelPressed()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1    # Landroid/widget/CompoundButton;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "buttonView"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mMatchDarkMode:Z

    const-string p1, "Off"

    const-string v0, "On"

    if-eqz p2, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    const-string v2, "801"

    const-string v3, "7057"

    invoke-static {v2, v3, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    move-object p1, v0

    :cond_1
    invoke-static {v3, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->shouldShowNewWidget()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->setBottomGroupColor()V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->setBackgroundColor()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->setPreviewImage()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->setPreviewImageColors()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mWidgetListDataModel:Lcom/sec/android/app/sbrowser/widget/WidgetListDataModel;

    const/4 p2, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/widget/WidgetListDataModel;->getWidgetData()Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->isDarkFontRequired()Z

    move-result v2

    iget v3, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mAppWidgetId:I

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ZI)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mAdapter:Lcom/sec/android/app/sbrowser/widget/WidgetListAdapter;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mListView:Landroid/widget/ListView;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_3
    const-string p0, "mListView"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw p2

    :cond_4
    const-string p0, "mContext"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw p2

    :cond_5
    const-string p0, "mWidgetListDataModel"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw p2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lm/n;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->setMenuOptionsVisibility()V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setStatusBarVisible(Landroid/content/Context;Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/common/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->checkIntent()V

    iget v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mAppWidgetId:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->addObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->shouldShowNewWidget()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0e0924

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0e0925

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mView:Landroid/view/View;

    const-string v2, "mView"

    if-eqz v0, :cond_b

    invoke-virtual {p0, v0}, Lm/n;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mView:Landroid/view/View;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f060df8

    invoke-virtual {p0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setDisplayCutoutBackgroundColor(Landroid/view/View;I)V

    new-instance v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingListDataFactory;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mContext:Landroid/content/Context;

    const-string v4, "mContext"

    if-eqz v3, :cond_9

    iget v5, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mAppWidgetId:I

    invoke-direct {v0, v3, v5}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingListDataFactory;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mWidgetSettingListDataFactory:Lcom/sec/android/app/sbrowser/widget/WidgetSettingListDataFactory;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingListDataFactory;->setAdapterData()V

    sget-object v0, Lcom/sec/android/app/sbrowser/widget/WidgetListDataModel;->Companion:Lcom/sec/android/app/sbrowser/widget/WidgetListDataModel$Companion;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/widget/WidgetListDataModel$Companion;->getInstance()Lcom/sec/android/app/sbrowser/widget/WidgetListDataModel;

    move-result-object v0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mWidgetListDataModel:Lcom/sec/android/app/sbrowser/widget/WidgetListDataModel;

    sget-object v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->INSTANCE:Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_8

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingUtils;->isNightModeEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mIsNightModeEnabled:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mView:Landroid/view/View;

    if-eqz v0, :cond_7

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->inflateElements(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mView:Landroid/view/View;

    if-eqz p1, :cond_6

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->setActionBar(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->setColorsAsWallpaper()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mView:Landroid/view/View;

    if-eqz p1, :cond_5

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->updatePreviewIfNeeded(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->setLayoutChangeListener()V

    sget-object p1, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;->NAVIGATION_WIDGET_SETTINGS:Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setNavigationBarColor(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil$NavigationBarState;)V

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    const-string v0, "getConfiguration(...)"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSystemNightTheme(Landroid/content/res/Configuration;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setLightStatusBarTheme(Landroid/content/Context;Z)V

    invoke-static {}, Lb1/a;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lcom/sec/android/app/sbrowser/common/device/BackPressManager;

    new-instance v2, Landroidx/activity/x;

    const/4 v3, 0x5

    invoke-direct {v2, v3, p0}, Landroidx/activity/x;-><init>(ILjava/lang/Object;)V

    invoke-direct {p1, v2}, Lcom/sec/android/app/sbrowser/common/device/BackPressManager;-><init>(Landroid/window/OnBackInvokedCallback;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mBackPressManager:Lcom/sec/android/app/sbrowser/common/device/BackPressManager;

    invoke-static {p0}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/a;->r(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mBackPressManager:Lcom/sec/android/app/sbrowser/common/device/BackPressManager;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/device/BackPressManager;->getOnSystemNavigationCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/a;->x(Landroid/window/OnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;)V

    goto :goto_1

    :cond_2
    const-string p0, "mBackPressManager"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    :try_start_0
    invoke-static {p0}, Lcom/sec/sbrowser/spl/wrapper/MajoWindowManager;->getSystemService(Landroid/content/Context;)Lcom/sec/sbrowser/spl/wrapper/MajoWindowManager;

    move-result-object p1

    const-string v1, "getSystemService(...)"

    invoke-static {p1, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1, v0}, Lcom/sec/sbrowser/spl/wrapper/MajoWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :goto_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    invoke-virtual {p0}, Lm/n;->getDelegate()Lm/p;

    move-result-object p0

    check-cast p0, Lm/w;

    iget p1, p0, Lm/w;->h0:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_4

    iput v1, p0, Lm/w;->h0:I

    iget-boolean p1, p0, Lm/w;->d0:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0, v0, v0}, Lm/w;->q(ZZ)Z

    :cond_4
    return-void

    :cond_5
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_6
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_7
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_8
    invoke-static {v4}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_9
    invoke-static {v4}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_a
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_b
    invoke-static {v2}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1    # Landroid/view/Menu;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "menu"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lm/n;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100032

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0b0053

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mTopCancelMenu:Landroid/view/MenuItem;

    const v0, 0x7f0b005a

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mTopDoneMenu:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->setMenuOptionsVisibility()V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onDestroy()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->removeObserver(Lcom/sec/android/app/sbrowser/common/device/observer/BrowserPreferenceObserver;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mWidgetSettingListDataFactory:Lcom/sec/android/app/sbrowser/widget/WidgetSettingListDataFactory;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingListDataFactory;->onDestroy()V

    invoke-static {}, Lb1/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/a;->r(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mBackPressManager:Lcom/sec/android/app/sbrowser/common/device/BackPressManager;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/device/BackPressManager;->getOnSystemNavigationCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object v1

    invoke-static {v0, v1}, Lj9/b;->j(Landroid/window/OnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;)V

    goto :goto_0

    :cond_0
    const-string p0, "mBackPressManager"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    invoke-super {p0}, Lm/n;->onDestroy()V

    return-void

    :cond_2
    const-string p0, "mWidgetSettingListDataFactory"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public final onDonePressed()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->updateSettingPreferenceAppWidget()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1    # Landroid/view/MenuItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "item"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x0

    const-string v3, "801"

    if-eq v0, v1, :cond_1

    const v1, 0x7f0b0053

    if-eq v0, v1, :cond_1

    const v1, 0x7f0b005a

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    const-string p1, "7059"

    invoke-static {v3, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->onDonePressed()V

    return v2

    :cond_1
    const-string p1, "7058"

    invoke-static {v3, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->onCancelPressed()V

    return v2
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroidx/fragment/app/J;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroidx/fragment/app/J;->onResume()V

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setStatusBarVisible(Landroid/content/Context;Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->restoringPreference()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->setBackgroundColor()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->setPreviewImage()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->setPreviewImageColors()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->setMatchPhoneorTabletSettingText()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "outState"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->KEY_COLOR_MODE:Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mColorMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->KEY_BACKGROUND_ALPHA_VALUE:Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mAlphaValue:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->KEY_MATCH_DARK_MODE:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->KEY_WIDGET_BACKGROUND_SHAPE:Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mBackgroundShape:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Landroidx/activity/p;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void

    :cond_0
    const-string p0, "mSwitch"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final setLayoutChangeListener()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isVersionCodeOOrO_MR1()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->TAG:Ljava/lang/String;

    const-string v1, "it\'s OOS and manually call updatelayout once"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->setLayoutMargin()V

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity$setLayoutChangeListener$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity$setLayoutChangeListener$1;-><init>(Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/widget/WidgetSettingActivity;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    if-eqz p0, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void

    :cond_1
    const-string p0, "mOnLayoutChangeListener"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
