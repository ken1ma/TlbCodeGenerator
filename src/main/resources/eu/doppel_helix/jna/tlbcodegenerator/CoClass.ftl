[#ftl]

package ${package};

import com.sun.jna.platform.win32.COM.COMException;
import com.sun.jna.platform.win32.COM.util.IComEventCallbackCookie;
import com.sun.jna.platform.win32.COM.util.IComEventCallbackListener;
import com.sun.jna.platform.win32.COM.util.IConnectionPoint;
import com.sun.jna.platform.win32.COM.util.IUnknown;
import com.sun.jna.platform.win32.COM.util.annotation.ComObject;
import com.sun.jna.platform.win32.COM.util.IRawDispatchHandle;

/**
[#if (entry.docString)?has_content] * ${entry.docString!}
 *
[/#if] * <p>uuid(${entry.guid})</p>
[#list entry.sourceInterfaces as iface]
 * <p>source(${fh.replaceJavaKeyword(iface)})</p>
[/#list]
[#list interfaces as iface]
 * <p>interface(${fh.replaceJavaKeyword(iface)})</p>
[/#list]
 */
@ComObject(clsId = "${entry.guid}")
public interface ${javaName} extends IUnknown[#list interfaces as iface]
    ,${fh.replaceJavaKeyword(iface)}[/#list]
{

}